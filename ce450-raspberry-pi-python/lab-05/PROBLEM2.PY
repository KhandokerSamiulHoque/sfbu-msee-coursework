import RPi.GPIO as GPIO
import time
GPIO.setwarnings(False)
#Display 1
SDI1 = 11
RCLK1 = 12
SRCLK1 = 13
#Display 2
SDI2 = 15
RCLK2 = 16
SRCLK2 = 18


number_hex = [0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f]

alphabet_hex = [
    0x77, 0x7C, 0x58, 0x5E, 0x79, 0x71, 0x6F, 0x76, 0x06, 0x0E, 0x70, 0x38, 0x37, 0x54, 0x5C, 0x73,
    0x67, 0x50, 0x6D, 0x78, 0x1C, 0x62, 0x7E, 0x76, 0x72, 0x5B
]

def print_msg():
    print('Program is running...')
    print('Please press Ctrl+C to end the program...')

def setup():
    GPIO.setmode(GPIO.BOARD)
    GPIO.setup(SDI1, GPIO.OUT)
    GPIO.setup(RCLK1, GPIO.OUT)
    GPIO.setup(SRCLK1, GPIO.OUT)

    GPIO.setup(SDI2, GPIO.OUT)
    GPIO.setup(RCLK2, GPIO.OUT)
    GPIO.setup(SRCLK2, GPIO.OUT)

    GPIO.output(SDI1, GPIO.LOW)
    GPIO.output(RCLK1, GPIO.LOW)
    GPIO.output(SRCLK1, GPIO.LOW)

    GPIO.output(SDI2, GPIO.LOW)
    GPIO.output(RCLK2, GPIO.LOW)
    GPIO.output(SRCLK2, GPIO.LOW)

def hc595_shift(dat, sdi, rclk, srclk):
    for bit in range(0, 8):
        GPIO.output(sdi, 0x80 & (dat << bit))
        GPIO.output(srclk, GPIO.HIGH)
        time.sleep(0.001)
        GPIO.output(srclk, GPIO.LOW)
    GPIO.output(rclk, GPIO.HIGH)
    time.sleep(0.001)
    GPIO.output(rclk, GPIO.LOW)

def disp_num(num):
    tens = num // 10
    units = num % 10

    if tens == 0:
        hc595_shift(0x00, SDI1, RCLK1, SRCLK1)
    else:
        hc595_shift(number_hex[tens], SDI1, RCLK1, SRCLK1)
    hc595_shift(number_hex[units], SDI2, RCLK2, SRCLK2)

def disp_alph(char):
    index_char = ord(char.upper()) - ord('A')

    hc595_shift(0x00, SDI1, RCLK1, SRCLK1)
    hc595_shift(alphabet_hex[index_char], SDI2, RCLK2, SRCLK2)

def loop():
    while True:
        for num in range(1, 26):
            disp_num(num)
            time.sleep(1)

        for char in range(ord('A'), ord('Z')+1):
            disp_alph(chr(char))
            time.sleep(1)

def destroy():
    GPIO.cleanup()

print_msg()
setup()
try:
    loop()
except KeyboardInterrupt:
    destroy()