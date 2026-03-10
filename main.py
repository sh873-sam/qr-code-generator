import qrcode
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("-u", "--url", required=True, help="URL to encode")
args = parser.parse_args()

img = qrcode.make(args.url)
img.save("qr_codes/github_qr.png")

print("QR Code generated successfully!")