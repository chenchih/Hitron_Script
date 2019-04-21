url1 = 'https://www.facebook.com/xxxxxx/11test11/'
url2 = 'https://www.facebook.com/xxxxxx/?22test22'
url3 = 'https://www.facebook.com/xxxxxx/33test33'
url4 = 'https://www.facebook.com/xxxxxx/44test44' 
def change_url(url):
    urlx = url.split('/')
    #print (urlx)
   
    if urlx[-1].startswith('?'):
       
        #remove the first letter
        urlx[-1] = urlx[-1][1:]
        return '/'.join(urlx[:-1])

    #elif urlx[-1].endswith(' '):
    
    else:
       
        urlx[-1] = urlx[-1][1:]
        urlx.remove('')
        return '/'.join(urlx[:-1])    

    if url[-1] == '/':
        return url[:-1]



    return url

def change_url2(url):
    urlx = url.split('/')
    if url[-1] == '/':
        return url[:-1]

    return url


print(f'url1: {change_url(url1)}')
print(f'url2: {change_url(url2)}')
print(f'url3: {change_url(url3)}')
print(f'url4: {change_url(url4)}')
#print(f'url1: {change_url(url2)}')
