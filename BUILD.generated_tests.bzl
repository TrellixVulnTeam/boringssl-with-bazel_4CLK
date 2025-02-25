# This file is created by generate_build_files.py. Do not edit manually.

test_support_sources = [
    "src/crypto/asn1/asn1_locl.h",
    "src/crypto/bio/internal.h",
    "src/crypto/bytestring/internal.h",
    "src/crypto/cipher_extra/internal.h",
    "src/crypto/conf/conf_def.h",
    "src/crypto/conf/internal.h",
    "src/crypto/curve25519/internal.h",
    "src/crypto/digest_extra/internal.h",
    "src/crypto/evp/internal.h",
    "src/crypto/fipsmodule/aes/internal.h",
    "src/crypto/fipsmodule/bn/internal.h",
    "src/crypto/fipsmodule/bn/rsaz_exp.h",
    "src/crypto/fipsmodule/cipher/internal.h",
    "src/crypto/fipsmodule/delocate.h",
    "src/crypto/fipsmodule/des/internal.h",
    "src/crypto/fipsmodule/digest/internal.h",
    "src/crypto/fipsmodule/digest/md32_common.h",
    "src/crypto/fipsmodule/ec/internal.h",
    "src/crypto/fipsmodule/ec/p256-x86_64-table.h",
    "src/crypto/fipsmodule/ec/p256-x86_64.h",
    "src/crypto/fipsmodule/modes/internal.h",
    "src/crypto/fipsmodule/rand/internal.h",
    "src/crypto/fipsmodule/rsa/internal.h",
    "src/crypto/internal.h",
    "src/crypto/obj/obj_dat.h",
    "src/crypto/pkcs7/internal.h",
    "src/crypto/pkcs8/internal.h",
    "src/crypto/poly1305/internal.h",
    "src/crypto/pool/internal.h",
    "src/crypto/test/file_test.cc",
    "src/crypto/test/file_test.h",
    "src/crypto/test/gtest_main.h",
    "src/crypto/test/test_util.cc",
    "src/crypto/test/test_util.h",
    "src/crypto/x509/charmap.h",
    "src/crypto/x509/internal.h",
    "src/crypto/x509/vpm_int.h",
    "src/crypto/x509v3/ext_dat.h",
    "src/crypto/x509v3/pcy_int.h",
    "src/ssl/internal.h",
    "src/ssl/test/async_bio.h",
    "src/ssl/test/packeted_bio.h",
    "src/ssl/test/test_config.h",
]


crypto_test_sources = [
    "crypto_test_data.cc",
    "src/crypto/asn1/asn1_test.cc",
    "src/crypto/base64/base64_test.cc",
    "src/crypto/bio/bio_test.cc",
    "src/crypto/bytestring/bytestring_test.cc",
    "src/crypto/chacha/chacha_test.cc",
    "src/crypto/cipher_extra/aead_extra_test.cc",
    "src/crypto/cmac/cmac_test.cc",
    "src/crypto/compiler_test.cc",
    "src/crypto/constant_time_test.cc",
    "src/crypto/curve25519/ed25519_test.cc",
    "src/crypto/curve25519/spake25519_test.cc",
    "src/crypto/curve25519/x25519_test.cc",
    "src/crypto/dh/dh_test.cc",
    "src/crypto/digest_extra/digest_test.cc",
    "src/crypto/dsa/dsa_test.cc",
    "src/crypto/err/err_test.cc",
    "src/crypto/evp/evp_extra_test.cc",
    "src/crypto/evp/pbkdf_test.cc",
    "src/crypto/fipsmodule/aes/aes_test.cc",
    "src/crypto/fipsmodule/ec/ec_test.cc",
    "src/crypto/fipsmodule/rand/ctrdrbg_test.cc",
    "src/crypto/hkdf/hkdf_test.cc",
    "src/crypto/lhash/lhash_test.cc",
    "src/crypto/pool/pool_test.cc",
    "src/crypto/refcount_test.cc",
    "src/crypto/rsa_extra/rsa_test.cc",
    "src/crypto/test/file_test_gtest.cc",
    "src/crypto/test/gtest_main.cc",
]

ssl_test_sources = [
    "src/crypto/test/gtest_main.cc",
    "src/ssl/ssl_test.cc",
]
def create_tests(copts, crypto, ssl):
  native.cc_test(
      name = "aead_test_crypto_cipher_extra_test_aes_128_cbc_sha1_ssl3",
      size = "small",
      srcs = ["src/crypto/cipher_extra/aead_test.cc"] + test_support_sources,
      args = [
          "aes-128-cbc-sha1-ssl3",
          "$(location src/crypto/cipher_extra/test/aes_128_cbc_sha1_ssl3_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/aes_128_cbc_sha1_ssl3_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "aead_test_crypto_cipher_extra_test_aes_128_cbc_sha1_tls",
      size = "small",
      srcs = ["src/crypto/cipher_extra/aead_test.cc"] + test_support_sources,
      args = [
          "aes-128-cbc-sha1-tls",
          "$(location src/crypto/cipher_extra/test/aes_128_cbc_sha1_tls_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/aes_128_cbc_sha1_tls_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "aead_test_crypto_cipher_extra_test_aes_128_cbc_sha1_tls_implicit_iv",
      size = "small",
      srcs = ["src/crypto/cipher_extra/aead_test.cc"] + test_support_sources,
      args = [
          "aes-128-cbc-sha1-tls-implicit-iv",
          "$(location src/crypto/cipher_extra/test/aes_128_cbc_sha1_tls_implicit_iv_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/aes_128_cbc_sha1_tls_implicit_iv_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "aead_test_crypto_cipher_extra_test_aes_128_cbc_sha256_tls",
      size = "small",
      srcs = ["src/crypto/cipher_extra/aead_test.cc"] + test_support_sources,
      args = [
          "aes-128-cbc-sha256-tls",
          "$(location src/crypto/cipher_extra/test/aes_128_cbc_sha256_tls_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/aes_128_cbc_sha256_tls_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "aead_test_crypto_cipher_extra_test_aes_128_ctr_hmac_sha256",
      size = "small",
      srcs = ["src/crypto/cipher_extra/aead_test.cc"] + test_support_sources,
      args = [
          "aes-128-ctr-hmac-sha256",
          "$(location src/crypto/cipher_extra/test/aes_128_ctr_hmac_sha256.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/aes_128_ctr_hmac_sha256.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "aead_test_crypto_cipher_extra_test_aes_128_gcm",
      size = "small",
      srcs = ["src/crypto/cipher_extra/aead_test.cc"] + test_support_sources,
      args = [
          "aes-128-gcm",
          "$(location src/crypto/cipher_extra/test/aes_128_gcm_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/aes_128_gcm_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "aead_test_crypto_cipher_extra_test_nist_cavp_aes_128_gcm",
      size = "small",
      srcs = ["src/crypto/cipher_extra/aead_test.cc"] + test_support_sources,
      args = [
          "aes-128-gcm",
          "$(location src/crypto/cipher_extra/test/nist_cavp/aes_128_gcm.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/nist_cavp/aes_128_gcm.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "aead_test_crypto_cipher_extra_test_aes_128_gcm_fips_testonly",
      size = "small",
      srcs = ["src/crypto/cipher_extra/aead_test.cc"] + test_support_sources,
      args = [
          "aes-128-gcm-fips-testonly",
          "$(location src/crypto/cipher_extra/test/aes_128_gcm_fips_testonly_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/aes_128_gcm_fips_testonly_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "aead_test_crypto_cipher_extra_test_aes_128_gcm_siv",
      size = "small",
      srcs = ["src/crypto/cipher_extra/aead_test.cc"] + test_support_sources,
      args = [
          "aes-128-gcm-siv",
          "$(location src/crypto/cipher_extra/test/aes_128_gcm_siv_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/aes_128_gcm_siv_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "aead_test_crypto_cipher_extra_test_aes_256_cbc_sha1_ssl3",
      size = "small",
      srcs = ["src/crypto/cipher_extra/aead_test.cc"] + test_support_sources,
      args = [
          "aes-256-cbc-sha1-ssl3",
          "$(location src/crypto/cipher_extra/test/aes_256_cbc_sha1_ssl3_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/aes_256_cbc_sha1_ssl3_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "aead_test_crypto_cipher_extra_test_aes_256_cbc_sha1_tls",
      size = "small",
      srcs = ["src/crypto/cipher_extra/aead_test.cc"] + test_support_sources,
      args = [
          "aes-256-cbc-sha1-tls",
          "$(location src/crypto/cipher_extra/test/aes_256_cbc_sha1_tls_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/aes_256_cbc_sha1_tls_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "aead_test_crypto_cipher_extra_test_aes_256_cbc_sha1_tls_implicit_iv",
      size = "small",
      srcs = ["src/crypto/cipher_extra/aead_test.cc"] + test_support_sources,
      args = [
          "aes-256-cbc-sha1-tls-implicit-iv",
          "$(location src/crypto/cipher_extra/test/aes_256_cbc_sha1_tls_implicit_iv_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/aes_256_cbc_sha1_tls_implicit_iv_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "aead_test_crypto_cipher_extra_test_aes_256_cbc_sha256_tls",
      size = "small",
      srcs = ["src/crypto/cipher_extra/aead_test.cc"] + test_support_sources,
      args = [
          "aes-256-cbc-sha256-tls",
          "$(location src/crypto/cipher_extra/test/aes_256_cbc_sha256_tls_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/aes_256_cbc_sha256_tls_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "aead_test_crypto_cipher_extra_test_aes_256_cbc_sha384_tls",
      size = "small",
      srcs = ["src/crypto/cipher_extra/aead_test.cc"] + test_support_sources,
      args = [
          "aes-256-cbc-sha384-tls",
          "$(location src/crypto/cipher_extra/test/aes_256_cbc_sha384_tls_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/aes_256_cbc_sha384_tls_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "aead_test_crypto_cipher_extra_test_aes_256_ctr_hmac_sha256",
      size = "small",
      srcs = ["src/crypto/cipher_extra/aead_test.cc"] + test_support_sources,
      args = [
          "aes-256-ctr-hmac-sha256",
          "$(location src/crypto/cipher_extra/test/aes_256_ctr_hmac_sha256.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/aes_256_ctr_hmac_sha256.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "aead_test_crypto_cipher_extra_test_aes_256_gcm",
      size = "small",
      srcs = ["src/crypto/cipher_extra/aead_test.cc"] + test_support_sources,
      args = [
          "aes-256-gcm",
          "$(location src/crypto/cipher_extra/test/aes_256_gcm_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/aes_256_gcm_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "aead_test_crypto_cipher_extra_test_nist_cavp_aes_256_gcm",
      size = "small",
      srcs = ["src/crypto/cipher_extra/aead_test.cc"] + test_support_sources,
      args = [
          "aes-256-gcm",
          "$(location src/crypto/cipher_extra/test/nist_cavp/aes_256_gcm.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/nist_cavp/aes_256_gcm.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "aead_test_crypto_cipher_extra_test_aes_256_gcm_fips_testonly",
      size = "small",
      srcs = ["src/crypto/cipher_extra/aead_test.cc"] + test_support_sources,
      args = [
          "aes-256-gcm-fips-testonly",
          "$(location src/crypto/cipher_extra/test/aes_256_gcm_fips_testonly_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/aes_256_gcm_fips_testonly_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "aead_test_crypto_cipher_extra_test_aes_256_gcm_siv",
      size = "small",
      srcs = ["src/crypto/cipher_extra/aead_test.cc"] + test_support_sources,
      args = [
          "aes-256-gcm-siv",
          "$(location src/crypto/cipher_extra/test/aes_256_gcm_siv_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/aes_256_gcm_siv_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "aead_test_crypto_cipher_extra_test_chacha20_poly1305",
      size = "small",
      srcs = ["src/crypto/cipher_extra/aead_test.cc"] + test_support_sources,
      args = [
          "chacha20-poly1305",
          "$(location src/crypto/cipher_extra/test/chacha20_poly1305_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/chacha20_poly1305_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "aead_test_crypto_cipher_extra_test_des_ede3_cbc_sha1_ssl3",
      size = "small",
      srcs = ["src/crypto/cipher_extra/aead_test.cc"] + test_support_sources,
      args = [
          "des-ede3-cbc-sha1-ssl3",
          "$(location src/crypto/cipher_extra/test/des_ede3_cbc_sha1_ssl3_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/des_ede3_cbc_sha1_ssl3_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "aead_test_crypto_cipher_extra_test_des_ede3_cbc_sha1_tls",
      size = "small",
      srcs = ["src/crypto/cipher_extra/aead_test.cc"] + test_support_sources,
      args = [
          "des-ede3-cbc-sha1-tls",
          "$(location src/crypto/cipher_extra/test/des_ede3_cbc_sha1_tls_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/des_ede3_cbc_sha1_tls_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "aead_test_crypto_cipher_extra_test_des_ede3_cbc_sha1_tls_implicit_iv",
      size = "small",
      srcs = ["src/crypto/cipher_extra/aead_test.cc"] + test_support_sources,
      args = [
          "des-ede3-cbc-sha1-tls-implicit-iv",
          "$(location src/crypto/cipher_extra/test/des_ede3_cbc_sha1_tls_implicit_iv_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/des_ede3_cbc_sha1_tls_implicit_iv_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "cipher_test_crypto_cipher_extra_test_cipher",
      size = "small",
      srcs = ["src/crypto/cipher_extra/cipher_test.cc"] + test_support_sources,
      args = [
          "$(location src/crypto/cipher_extra/test/cipher_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/cipher_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "cipher_test_crypto_cipher_extra_test_nist_cavp_aes_128_cbc",
      size = "small",
      srcs = ["src/crypto/cipher_extra/cipher_test.cc"] + test_support_sources,
      args = [
          "$(location src/crypto/cipher_extra/test/nist_cavp/aes_128_cbc.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/nist_cavp/aes_128_cbc.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "cipher_test_crypto_cipher_extra_test_nist_cavp_aes_128_ctr",
      size = "small",
      srcs = ["src/crypto/cipher_extra/cipher_test.cc"] + test_support_sources,
      args = [
          "$(location src/crypto/cipher_extra/test/nist_cavp/aes_128_ctr.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/nist_cavp/aes_128_ctr.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "cipher_test_crypto_cipher_extra_test_nist_cavp_aes_192_cbc",
      size = "small",
      srcs = ["src/crypto/cipher_extra/cipher_test.cc"] + test_support_sources,
      args = [
          "$(location src/crypto/cipher_extra/test/nist_cavp/aes_192_cbc.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/nist_cavp/aes_192_cbc.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "cipher_test_crypto_cipher_extra_test_nist_cavp_aes_192_ctr",
      size = "small",
      srcs = ["src/crypto/cipher_extra/cipher_test.cc"] + test_support_sources,
      args = [
          "$(location src/crypto/cipher_extra/test/nist_cavp/aes_192_ctr.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/nist_cavp/aes_192_ctr.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "cipher_test_crypto_cipher_extra_test_nist_cavp_aes_256_cbc",
      size = "small",
      srcs = ["src/crypto/cipher_extra/cipher_test.cc"] + test_support_sources,
      args = [
          "$(location src/crypto/cipher_extra/test/nist_cavp/aes_256_cbc.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/nist_cavp/aes_256_cbc.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "cipher_test_crypto_cipher_extra_test_nist_cavp_aes_256_ctr",
      size = "small",
      srcs = ["src/crypto/cipher_extra/cipher_test.cc"] + test_support_sources,
      args = [
          "$(location src/crypto/cipher_extra/test/nist_cavp/aes_256_ctr.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/nist_cavp/aes_256_ctr.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "cipher_test_crypto_cipher_extra_test_nist_cavp_tdes_cbc",
      size = "small",
      srcs = ["src/crypto/cipher_extra/cipher_test.cc"] + test_support_sources,
      args = [
          "$(location src/crypto/cipher_extra/test/nist_cavp/tdes_cbc.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/nist_cavp/tdes_cbc.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "cipher_test_crypto_cipher_extra_test_nist_cavp_tdes_ecb",
      size = "small",
      srcs = ["src/crypto/cipher_extra/cipher_test.cc"] + test_support_sources,
      args = [
          "$(location src/crypto/cipher_extra/test/nist_cavp/tdes_ecb.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/cipher_extra/test/nist_cavp/tdes_ecb.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "ecdh_test",
      size = "small",
      srcs = ["src/crypto/ecdh/ecdh_test.cc"] + test_support_sources,
      args = [
          "$(location src/crypto/ecdh/ecdh_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/ecdh/ecdh_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "evp_test",
      size = "small",
      srcs = ["src/crypto/evp/evp_test.cc"] + test_support_sources,
      args = [
          "$(location src/crypto/evp/evp_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/evp/evp_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "bn_test",
      size = "small",
      srcs = ["src/crypto/fipsmodule/bn/bn_test.cc"] + test_support_sources,
      args = [
          "$(location src/crypto/fipsmodule/bn/bn_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/fipsmodule/bn/bn_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "ctrdrbg_vector_test",
      size = "small",
      srcs = ["src/crypto/fipsmodule/rand/ctrdrbg_vector_test.cc"] + test_support_sources,
      args = [
          "$(location src/crypto/fipsmodule/rand/ctrdrbg_vectors.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/fipsmodule/rand/ctrdrbg_vectors.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "ecdsa_sign_test",
      size = "small",
      srcs = ["src/crypto/fipsmodule/ecdsa/ecdsa_sign_test.cc"] + test_support_sources,
      args = [
          "$(location src/crypto/fipsmodule/ecdsa/ecdsa_sign_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/fipsmodule/ecdsa/ecdsa_sign_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "ecdsa_test",
      size = "small",
      srcs = ["src/crypto/fipsmodule/ecdsa/ecdsa_test.cc"] + test_support_sources,
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      deps = [crypto],
  )

  native.cc_test(
      name = "ecdsa_verify_test",
      size = "small",
      srcs = ["src/crypto/fipsmodule/ecdsa/ecdsa_verify_test.cc"] + test_support_sources,
      args = [
          "$(location src/crypto/fipsmodule/ecdsa/ecdsa_verify_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/fipsmodule/ecdsa/ecdsa_verify_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "example_mul",
      size = "small",
      srcs = ["src/crypto/fipsmodule/ec/example_mul.c"] + test_support_sources,
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      deps = [crypto],
  )

  native.cc_test(
      name = "gcm_test",
      size = "small",
      srcs = ["src/crypto/fipsmodule/modes/gcm_test.cc"] + test_support_sources,
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      deps = [crypto],
  )

  native.cc_test(
      name = "p256-x86_64_test",
      size = "small",
      srcs = ["src/crypto/fipsmodule/ec/p256-x86_64_test.cc"] + test_support_sources,
      args = [
          "$(location src/crypto/fipsmodule/ec/p256-x86_64_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/fipsmodule/ec/p256-x86_64_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "hmac_test",
      size = "small",
      srcs = ["src/crypto/hmac_extra/hmac_test.cc"] + test_support_sources,
      args = [
          "$(location src/crypto/hmac_extra/hmac_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/hmac_extra/hmac_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "obj_test",
      size = "small",
      srcs = ["src/crypto/obj/obj_test.cc"] + test_support_sources,
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      deps = [crypto],
  )

  native.cc_test(
      name = "pkcs7_test",
      size = "small",
      srcs = ["src/crypto/pkcs7/pkcs7_test.c"] + test_support_sources,
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      deps = [crypto],
  )

  native.cc_test(
      name = "pkcs12_test",
      size = "small",
      srcs = ["src/crypto/pkcs8/pkcs12_test.cc"] + test_support_sources,
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      deps = [crypto],
  )

  native.cc_test(
      name = "pkcs8_test",
      size = "small",
      srcs = ["src/crypto/pkcs8/pkcs8_test.cc"] + test_support_sources,
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      deps = [crypto],
  )

  native.cc_test(
      name = "poly1305_test",
      size = "small",
      srcs = ["src/crypto/poly1305/poly1305_test.cc"] + test_support_sources,
      args = [
          "$(location src/crypto/poly1305/poly1305_tests.txt)",
      ],
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      data = [
          "src/crypto/poly1305/poly1305_tests.txt",
      ],
      deps = [crypto],
  )

  native.cc_test(
      name = "thread_test",
      size = "small",
      srcs = ["src/crypto/thread_test.c"] + test_support_sources,
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      deps = [crypto],
  )

  native.cc_test(
      name = "tab_test",
      size = "small",
      srcs = ["src/crypto/x509v3/tab_test.c"] + test_support_sources,
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      deps = [crypto],
  )

  native.cc_test(
      name = "v3name_test",
      size = "small",
      srcs = ["src/crypto/x509v3/v3name_test.c"] + test_support_sources,
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      deps = [crypto],
  )

  native.cc_test(
      name = "x509_test",
      size = "small",
      srcs = ["src/crypto/x509/x509_test.cc"] + test_support_sources,
      copts = copts + ["-DBORINGSSL_SHARED_LIBRARY"],
      deps = [crypto],
  )
