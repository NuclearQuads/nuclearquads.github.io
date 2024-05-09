import RPi.GPIO as GPIO
import time
import esptool


def setup():
    GPIO.setmode(GPIO.BCM)
    # Boot Pin
    GPIO.setup(16, GPIO.OUT, initial=GPIO.HIGH)
    # Reset Pin
    GPIO.setup(11, GPIO.OUT, initial=GPIO.HIGH)
    time.sleep(0.5)


def enterBootloaderMode():
    # Boot Pin low
    GPIO.output(16, GPIO.LOW) 
    time.sleep(0.5)

    # Reset Pin Cycle
    GPIO.output(11, GPIO.LOW)
    time.sleep(0.5)

    GPIO.output(11, GPIO.HIGH)
    time.sleep(0.5)

    # Reset Boot Pin after cycle
    GPIO.output (16, GPIO.HIGH)


def flashESP():
    command = ['--port', '/dev/ttyAMA4', 'write_flash', '--erase-all', '0x00001000', 'bootloader.bin', '0x00008000', 'partitions.bin', '0x0000e000', 'boot_app0.bin', '0x00010000', 'firmware.bin']
    esptool.main(command)


def resetESP():
    # Reset Pin Cycle
    GPIO.output(16, GPIO.HIGH)
    GPIO.output(11, GPIO.LOW)
    time.sleep(0.5)
    GPIO.output(11, GPIO.HIGH) 
    time.sleep(0.5)


if __name__ == "__main__":
    setup()
    resetESP()
    enterBootloaderMode()
    flashESP()
    resetESP()