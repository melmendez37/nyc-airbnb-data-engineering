UPDATE listings
SET host_identity_verified = 'unverified'
WHERE host_identity_verified = 'unconfirmed'
OR host_identity_verified IS NULL;