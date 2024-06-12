alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

# def simpleCipher(encrypted, k):
#     return ''.join([alphabet[(alphabet.upper().index(c) - k)] for c in encrypted])

# def simpleCipher(encrypted, k):
#     encrypted = encrypted.upper()
#     decrypted = ''
#     for c in encrypted:
#         decrypted += alphabet[(alphabet.index(c) - k)]
#     return decrypted

def simpleCipher(encrypted, k):
    encrypted = encrypted.upper()
    decrypted = ''
    for c in encrypted:
        decrypted += alphabet[(alphabet.find(c) - k)]
    return decrypted
#This solutions is not expected big number of k

print(simpleCipher('VTAOG', 2))