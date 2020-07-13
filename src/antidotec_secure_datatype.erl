-module(antidotec_secure_datatype).

-callback encrypt(term(), binary()) -> term().
-callback decrypt(term(), binary()) -> term().
