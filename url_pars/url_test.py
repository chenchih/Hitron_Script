url1 = 'https://www.facebook.com/xxxxxx/test1q223/'
url2 = 'https://www.facebook.com/xxxxxx/?test1q223'
url3 = 'https://www.facebook.com/xxxxxx/test1q223'
url4 = 'https://www.facebook.com/xxxxxx/test1q223'

def change_url(url):
    idx = url.index('xxxxxx/')
    print(idx)
    #print (url[:idx+6])
    #return url[:idx+6]
 
print(f'url1: {change_url(url1)}')
print(f'url2: {change_url(url2)}')
print(f'url3: {change_url(url3)}')
print(f'url4: {change_url(url4)}')