###### Class j5.d (j5.d)
.class public final Lj5/d;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# direct methods
.method public static a(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    new-instance p0, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x445b

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    return-object p0

    :cond_e
    const/4 v0, 0x2

    const-string v1, ":"

    .line 3
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 4
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    .line 5
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_2e

    aget-object v1, p0, v2

    if-eqz v1, :cond_2e

    .line 6
    aget-object v1, p0, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v2

    .line 7
    :cond_2e
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_49

    .line 9
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lj5/d;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    return-object p0

    .line 10
    :cond_49
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lj5/d;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_4c8

    goto/16 :goto_3ad

    :sswitch_e
    const-string v0, "UNSUPPORTED_TENANT_OPERATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_3ad

    :cond_18
    const/16 v2, 0x43

    goto/16 :goto_3ad

    :sswitch_1c
    const-string v0, "EMAIL_CHANGE_NEEDS_VERIFICATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_3ad

    :cond_26
    const/16 v2, 0x42

    goto/16 :goto_3ad

    :sswitch_2a
    const-string v0, "MISSING_SESSION_INFO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_3ad

    :cond_34
    const/16 v2, 0x41

    goto/16 :goto_3ad

    :sswitch_38
    const-string v0, "MISSING_CONTINUE_URI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_3ad

    :cond_42
    const/16 v2, 0x40

    goto/16 :goto_3ad

    :sswitch_46
    const-string v0, "TOO_MANY_ATTEMPTS_TRY_LATER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_3ad

    :cond_50
    const/16 v2, 0x3f

    goto/16 :goto_3ad

    :sswitch_54
    const-string v0, "INVALID_APP_CREDENTIAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto/16 :goto_3ad

    :cond_5e
    const/16 v2, 0x3e

    goto/16 :goto_3ad

    :sswitch_62
    const-string v0, "INVALID_PHONE_NUMBER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto/16 :goto_3ad

    :cond_6c
    const/16 v2, 0x3d

    goto/16 :goto_3ad

    :sswitch_70
    const-string v0, "USER_DISABLED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto/16 :goto_3ad

    :cond_7a
    const/16 v2, 0x3c

    goto/16 :goto_3ad

    :sswitch_7e
    const-string v0, "INVALID_IDENTIFIER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    goto/16 :goto_3ad

    :cond_88
    const/16 v2, 0x3b

    goto/16 :goto_3ad

    :sswitch_8c
    const-string v0, "FEDERATED_USER_ID_ALREADY_LINKED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto/16 :goto_3ad

    :cond_96
    const/16 v2, 0x3a

    goto/16 :goto_3ad

    :sswitch_9a
    const-string v0, "MISSING_CODE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    goto/16 :goto_3ad

    :cond_a4
    const/16 v2, 0x39

    goto/16 :goto_3ad

    :sswitch_a8
    const-string v0, "SESSION_EXPIRED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    goto/16 :goto_3ad

    :cond_b2
    const/16 v2, 0x38

    goto/16 :goto_3ad

    :sswitch_b6
    const-string v0, "<<Network Error>>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    goto/16 :goto_3ad

    :cond_c0
    const/16 v2, 0x37

    goto/16 :goto_3ad

    :sswitch_c4
    const-string v0, "INVALID_PASSWORD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ce

    goto/16 :goto_3ad

    :cond_ce
    const/16 v2, 0x36

    goto/16 :goto_3ad

    :sswitch_d2
    const-string v0, "INVALID_CUSTOM_TOKEN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dc

    goto/16 :goto_3ad

    :cond_dc
    const/16 v2, 0x35

    goto/16 :goto_3ad

    :sswitch_e0
    const-string v0, "INVALID_PENDING_TOKEN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    goto/16 :goto_3ad

    :cond_ea
    const/16 v2, 0x34

    goto/16 :goto_3ad

    :sswitch_ee
    const-string v0, "RESET_PASSWORD_EXCEED_LIMIT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f8

    goto/16 :goto_3ad

    :cond_f8
    const/16 v2, 0x33

    goto/16 :goto_3ad

    :sswitch_fc
    const-string v0, "INVALID_MESSAGE_PAYLOAD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    goto/16 :goto_3ad

    :cond_106
    const/16 v2, 0x32

    goto/16 :goto_3ad

    :sswitch_10a
    const-string v0, "MISSING_CLIENT_IDENTIFIER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_114

    goto/16 :goto_3ad

    :cond_114
    const/16 v2, 0x31

    goto/16 :goto_3ad

    :sswitch_118
    const-string v0, "REQUIRES_SECOND_FACTOR_AUTH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_122

    goto/16 :goto_3ad

    :cond_122
    const/16 v2, 0x30

    goto/16 :goto_3ad

    :sswitch_126
    const-string v0, "WEB_CONTEXT_CANCELED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_130

    goto/16 :goto_3ad

    :cond_130
    const/16 v2, 0x2f

    goto/16 :goto_3ad

    :sswitch_134
    const-string v0, "CREDENTIAL_MISMATCH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13e

    goto/16 :goto_3ad

    :cond_13e
    const/16 v2, 0x2e

    goto/16 :goto_3ad

    :sswitch_142
    const-string v0, "INVALID_PROVIDER_ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14c

    goto/16 :goto_3ad

    :cond_14c
    const/16 v2, 0x2d

    goto/16 :goto_3ad

    :sswitch_150
    const-string v0, "INVALID_VERIFICATION_PROOF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15a

    goto/16 :goto_3ad

    :cond_15a
    const/16 v2, 0x2c

    goto/16 :goto_3ad

    :sswitch_15e
    const-string v0, "INVALID_MFA_PENDING_CREDENTIAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_168

    goto/16 :goto_3ad

    :cond_168
    const/16 v2, 0x2b

    goto/16 :goto_3ad

    :sswitch_16c
    const-string v0, "REJECTED_CREDENTIAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_176

    goto/16 :goto_3ad

    :cond_176
    const/16 v2, 0x2a

    goto/16 :goto_3ad

    :sswitch_17a
    const-string v0, "UNVERIFIED_EMAIL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_184

    goto/16 :goto_3ad

    :cond_184
    const/16 v2, 0x29

    goto/16 :goto_3ad

    :sswitch_188
    const-string v0, "PASSWORD_LOGIN_DISABLED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_192

    goto/16 :goto_3ad

    :cond_192
    const/16 v2, 0x28

    goto/16 :goto_3ad

    :sswitch_196
    const-string v0, "WEB_STORAGE_UNSUPPORTED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a0

    goto/16 :goto_3ad

    :cond_1a0
    const/16 v2, 0x27

    goto/16 :goto_3ad

    :sswitch_1a4
    const-string v0, "INVALID_ID_TOKEN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae

    goto/16 :goto_3ad

    :cond_1ae
    const/16 v2, 0x26

    goto/16 :goto_3ad

    :sswitch_1b2
    const-string v0, "EMAIL_EXISTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bc

    goto/16 :goto_3ad

    :cond_1bc
    const/16 v2, 0x25

    goto/16 :goto_3ad

    :sswitch_1c0
    const-string v0, "MISSING_MFA_PENDING_CREDENTIAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ca

    goto/16 :goto_3ad

    :cond_1ca
    const/16 v2, 0x24

    goto/16 :goto_3ad

    :sswitch_1ce
    const-string v0, "INVALID_DYNAMIC_LINK_DOMAIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d8

    goto/16 :goto_3ad

    :cond_1d8
    const/16 v2, 0x23

    goto/16 :goto_3ad

    :sswitch_1dc
    const-string v0, "MISSING_PHONE_NUMBER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e6

    goto/16 :goto_3ad

    :cond_1e6
    const/16 v2, 0x22

    goto/16 :goto_3ad

    :sswitch_1ea
    const-string v0, "INVALID_SENDER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f4

    goto/16 :goto_3ad

    :cond_1f4
    const/16 v2, 0x21

    goto/16 :goto_3ad

    :sswitch_1f8
    const-string v0, "UNSUPPORTED_FIRST_FACTOR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_202

    goto/16 :goto_3ad

    :cond_202
    const/16 v2, 0x20

    goto/16 :goto_3ad

    :sswitch_206
    const-string v0, "EMAIL_NOT_FOUND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_210

    goto/16 :goto_3ad

    :cond_210
    const/16 v2, 0x1f

    goto/16 :goto_3ad

    :sswitch_214
    const-string v0, "WEAK_PASSWORD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e

    goto/16 :goto_3ad

    :cond_21e
    const/16 v2, 0x1e

    goto/16 :goto_3ad

    :sswitch_222
    const-string v0, "USER_NOT_FOUND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22c

    goto/16 :goto_3ad

    :cond_22c
    const/16 v2, 0x1d

    goto/16 :goto_3ad

    :sswitch_230
    const-string v0, "MISSING_MFA_ENROLLMENT_ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23a

    goto/16 :goto_3ad

    :cond_23a
    const/16 v2, 0x1c

    goto/16 :goto_3ad

    :sswitch_23e
    const-string v0, "SECOND_FACTOR_LIMIT_EXCEEDED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_248

    goto/16 :goto_3ad

    :cond_248
    const/16 v2, 0x1b

    goto/16 :goto_3ad

    :sswitch_24c
    const-string v0, "WEB_INTERNAL_ERROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_256

    goto/16 :goto_3ad

    :cond_256
    const/16 v2, 0x1a

    goto/16 :goto_3ad

    :sswitch_25a
    const-string v0, "OPERATION_NOT_ALLOWED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_264

    goto/16 :goto_3ad

    :cond_264
    const/16 v2, 0x19

    goto/16 :goto_3ad

    :sswitch_268
    const-string v0, "TIMEOUT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_272

    goto/16 :goto_3ad

    :cond_272
    const/16 v2, 0x18

    goto/16 :goto_3ad

    :sswitch_276
    const-string v0, "CREDENTIAL_TOO_OLD_LOGIN_AGAIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_280

    goto/16 :goto_3ad

    :cond_280
    const/16 v2, 0x17

    goto/16 :goto_3ad

    :sswitch_284
    const-string v0, "MISSING_PASSWORD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28e

    goto/16 :goto_3ad

    :cond_28e
    const/16 v2, 0x16

    goto/16 :goto_3ad

    :sswitch_292
    const-string v0, "MFA_ENROLLMENT_NOT_FOUND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29c

    goto/16 :goto_3ad

    :cond_29c
    const/16 v2, 0x15

    goto/16 :goto_3ad

    :sswitch_2a0
    const-string v0, "NO_SUCH_PROVIDER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2aa

    goto/16 :goto_3ad

    :cond_2aa
    const/16 v2, 0x14

    goto/16 :goto_3ad

    :sswitch_2ae
    const-string v0, "INVALID_CERT_HASH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b8

    goto/16 :goto_3ad

    :cond_2b8
    const/16 v2, 0x13

    goto/16 :goto_3ad

    :sswitch_2bc
    const-string v0, "MISSING_OR_INVALID_NONCE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c6

    goto/16 :goto_3ad

    :cond_2c6
    const/16 v2, 0x12

    goto/16 :goto_3ad

    :sswitch_2ca
    const-string v0, "ADMIN_ONLY_OPERATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d4

    goto/16 :goto_3ad

    :cond_2d4
    const/16 v2, 0x11

    goto/16 :goto_3ad

    :sswitch_2d8
    const-string v0, "INVALID_EMAIL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e2

    goto/16 :goto_3ad

    :cond_2e2
    const/16 v2, 0x10

    goto/16 :goto_3ad

    :sswitch_2e6
    const-string v0, "SECOND_FACTOR_EXISTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f0

    goto/16 :goto_3ad

    :cond_2f0
    const/16 v2, 0xf

    goto/16 :goto_3ad

    :sswitch_2f4
    const-string v0, "INVALID_SESSION_INFO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2fe

    goto/16 :goto_3ad

    :cond_2fe
    const/16 v2, 0xe

    goto/16 :goto_3ad

    :sswitch_302
    const-string v0, "INVALID_TENANT_ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30c

    goto/16 :goto_3ad

    :cond_30c
    const/16 v2, 0xd

    goto/16 :goto_3ad

    :sswitch_310
    const-string v0, "TOKEN_EXPIRED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31a

    goto/16 :goto_3ad

    :cond_31a
    const/16 v2, 0xc

    goto/16 :goto_3ad

    :sswitch_31e
    const-string v0, "INVALID_CODE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_328

    goto/16 :goto_3ad

    :cond_328
    const/16 v2, 0xb

    goto/16 :goto_3ad

    :sswitch_32c
    const-string v0, "MISSING_EMAIL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_336

    goto/16 :goto_3ad

    :cond_336
    const/16 v2, 0xa

    goto/16 :goto_3ad

    :sswitch_33a
    const-string v0, "INVALID_OOB_CODE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_344

    goto/16 :goto_3ad

    :cond_344
    const/16 v2, 0x9

    goto/16 :goto_3ad

    :sswitch_348
    const-string v0, "EXPIRED_OOB_CODE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_352

    goto/16 :goto_3ad

    :cond_352
    const/16 v2, 0x8

    goto/16 :goto_3ad

    :sswitch_356
    const-string v0, "WEB_NETWORK_REQUEST_FAILED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35f

    goto :goto_3ad

    :cond_35f
    const/4 v2, 0x7

    goto :goto_3ad

    :sswitch_361
    const-string v0, "QUOTA_EXCEEDED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36a

    goto :goto_3ad

    :cond_36a
    const/4 v2, 0x6

    goto :goto_3ad

    :sswitch_36c
    const-string v0, "DYNAMIC_LINK_NOT_ACTIVATED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_375

    goto :goto_3ad

    :cond_375
    const/4 v2, 0x5

    goto :goto_3ad

    :sswitch_377
    const-string v0, "INVALID_IDP_RESPONSE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_380

    goto :goto_3ad

    :cond_380
    const/4 v2, 0x4

    goto :goto_3ad

    :sswitch_382
    const-string v0, "INTERNAL_SUCCESS_SIGN_OUT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38b

    goto :goto_3ad

    :cond_38b
    const/4 v2, 0x3

    goto :goto_3ad

    :sswitch_38d
    const-string v0, "WEB_CONTEXT_ALREADY_PRESENTED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_396

    goto :goto_3ad

    :cond_396
    const/4 v2, 0x2

    goto :goto_3ad

    :sswitch_398
    const-string v0, "INVALID_RECIPIENT_EMAIL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a1

    goto :goto_3ad

    :cond_3a1
    const/4 v2, 0x1

    goto :goto_3ad

    :sswitch_3a3
    const-string v0, "USER_CANCELLED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3ac

    goto :goto_3ad

    :cond_3ac
    const/4 v2, 0x0

    :goto_3ad
    const/16 v0, 0x445b

    packed-switch v2, :pswitch_data_5da

    const/16 v2, 0x445b

    goto/16 :goto_493

    :pswitch_3b6
    const/16 v2, 0x42b1

    goto/16 :goto_493

    :pswitch_3ba
    const/16 v2, 0x42c2

    goto/16 :goto_493

    :pswitch_3be
    const/16 v2, 0x4295

    goto/16 :goto_493

    :pswitch_3c2
    const/16 v2, 0x4290

    goto/16 :goto_493

    :pswitch_3c6
    const/16 v2, 0x4284

    goto/16 :goto_493

    :pswitch_3ca
    const/16 v2, 0x4292

    goto/16 :goto_493

    :pswitch_3ce
    const/16 v2, 0x426d

    goto/16 :goto_493

    :pswitch_3d2
    const/16 v2, 0x4281

    goto/16 :goto_493

    :pswitch_3d6
    const/16 v2, 0x4293

    goto/16 :goto_493

    :pswitch_3da
    const/16 v2, 0x429b

    goto/16 :goto_493

    :pswitch_3de
    const/16 v2, 0x4271

    goto/16 :goto_493

    :pswitch_3e2
    const/16 v2, 0x4268

    goto/16 :goto_493

    :pswitch_3e6
    const/16 v2, 0x4272

    goto/16 :goto_493

    :pswitch_3ea
    const/16 v2, 0x4287

    goto/16 :goto_493

    :pswitch_3ee
    const/16 v2, 0x42c5

    goto/16 :goto_493

    :pswitch_3f2
    const/16 v2, 0x42b6

    goto/16 :goto_493

    :pswitch_3f6
    const/16 v2, 0x42a2

    goto/16 :goto_493

    :pswitch_3fa
    const/16 v2, 0x426a

    goto/16 :goto_493

    :pswitch_3fe
    const/16 v2, 0x42af

    goto/16 :goto_493

    :pswitch_402
    const/16 v2, 0x4299

    goto/16 :goto_493

    :pswitch_406
    const/16 v2, 0x42bb

    goto/16 :goto_493

    :pswitch_40a
    const/16 v2, 0x42b3

    goto/16 :goto_493

    :pswitch_40e
    const/16 v2, 0x42be

    goto/16 :goto_493

    :pswitch_412
    const/16 v2, 0x42a9

    goto/16 :goto_493

    :pswitch_416
    const/16 v2, 0x4279

    goto/16 :goto_493

    :pswitch_41a
    const/16 v2, 0x426f

    goto/16 :goto_493

    :pswitch_41e
    const/16 v2, 0x42b9

    goto/16 :goto_493

    :pswitch_422
    const/16 v2, 0x42b2

    goto/16 :goto_493

    :pswitch_426
    const/16 v2, 0x4291

    goto/16 :goto_493

    :pswitch_42a
    const/16 v2, 0x4288

    goto/16 :goto_493

    :pswitch_42e
    const/16 v2, 0x42c1

    goto/16 :goto_493

    :pswitch_432
    const/16 v2, 0x4282

    goto/16 :goto_493

    :pswitch_436
    const/16 v2, 0x4273

    goto/16 :goto_493

    :pswitch_43a
    const/16 v2, 0x42ba

    goto/16 :goto_493

    :pswitch_43e
    const/16 v2, 0x42c0

    goto/16 :goto_493

    :pswitch_442
    const/16 v2, 0x42a6

    goto/16 :goto_493

    :pswitch_446
    const/16 v2, 0x426e

    goto :goto_493

    :pswitch_449
    const/16 v2, 0x427c

    goto :goto_493

    :pswitch_44c
    const/16 v2, 0x4276

    goto :goto_493

    :pswitch_44f
    const/16 v2, 0x428b

    goto :goto_493

    :pswitch_452
    const/16 v2, 0x42bc

    goto :goto_493

    :pswitch_455
    const/16 v2, 0x4278

    goto :goto_493

    :pswitch_458
    const/16 v2, 0x42a8

    goto :goto_493

    :pswitch_45b
    const/16 v2, 0x42c6

    goto :goto_493

    :pswitch_45e
    const/16 v2, 0x42bd

    goto :goto_493

    :pswitch_461
    const/16 v2, 0x4270

    goto :goto_493

    :pswitch_464
    const/16 v2, 0x42bf

    goto :goto_493

    :pswitch_467
    const/16 v2, 0x4296

    goto :goto_493

    :pswitch_46a
    const/16 v2, 0x42b7

    goto :goto_493

    :pswitch_46d
    const/16 v2, 0x427d

    goto :goto_493

    :pswitch_470
    const/16 v2, 0x4294

    goto :goto_493

    :pswitch_473
    const/16 v2, 0x428a

    goto :goto_493

    :pswitch_476
    const/16 v2, 0x4286

    goto :goto_493

    :pswitch_479
    const/16 v2, 0x4285

    goto :goto_493

    :pswitch_47c
    const/16 v2, 0x42a5

    goto :goto_493

    :pswitch_47f
    const/16 v2, 0x429c

    goto :goto_493

    :pswitch_482
    const/16 v2, 0x42ac

    goto :goto_493

    :pswitch_485
    const/16 v2, 0x426c

    goto :goto_493

    :pswitch_488
    const/16 v2, 0x42c3

    goto :goto_493

    :pswitch_48b
    const/16 v2, 0x42a1

    goto :goto_493

    :pswitch_48e
    const/16 v2, 0x4289

    goto :goto_493

    :pswitch_491
    const/16 v2, 0x4651

    :goto_493
    if-ne v2, v0, :cond_4c1

    if-eqz p1, :cond_4bb

    .line 2
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 3
    :cond_4bb
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v2, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 4
    :cond_4c1
    new-instance p0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object p0

    nop

    :sswitch_data_4c8
    .sparse-switch
        -0x7efcea43 -> :sswitch_3a3
        -0x7b22a0b2 -> :sswitch_398
        -0x781788c8 -> :sswitch_38d
        -0x77857c36 -> :sswitch_382
        -0x77476bed -> :sswitch_377
        -0x73e5b440 -> :sswitch_36c
        -0x6b538ea6 -> :sswitch_361
        -0x69c8a437 -> :sswitch_356
        -0x5ea1125c -> :sswitch_348
        -0x5e6850ee -> :sswitch_33a
        -0x56f2c8bd -> :sswitch_32c
        -0x54b910ab -> :sswitch_31e
        -0x50384d61 -> :sswitch_310
        -0x4fe04f98 -> :sswitch_302
        -0x496efdc1 -> :sswitch_2f4
        -0x47af9f3f -> :sswitch_2e6
        -0x424dc8ec -> :sswitch_2d8
        -0x3f66f07c -> :sswitch_2ca
        -0x3a15c01c -> :sswitch_2bc
        -0x337d021f -> :sswitch_2ae
        -0x31620515 -> :sswitch_2a0
        -0x2cb02e8e -> :sswitch_292
        -0x2be1a28c -> :sswitch_284
        -0x26818461 -> :sswitch_276
        -0x238526bf -> :sswitch_268
        -0x13e36efc -> :sswitch_25a
        -0x118d7daf -> :sswitch_24c
        -0xcf11d24 -> :sswitch_23e
        -0x74fc0ba -> :sswitch_230
        -0x47f049e -> :sswitch_222
        -0x26cd47e -> :sswitch_214
        0xea41d3 -> :sswitch_206
        0xc890bc8 -> :sswitch_1f8
        0x100d9d9d -> :sswitch_1ea
        0x109e31b3 -> :sswitch_1dc
        0x1857de21 -> :sswitch_1ce
        0x193f0f0f -> :sswitch_1c0
        0x1cd6ee7f -> :sswitch_1b2
        0x1d53031d -> :sswitch_1a4
        0x1d546ca6 -> :sswitch_196
        0x205960d6 -> :sswitch_188
        0x22b79a1e -> :sswitch_17a
        0x24100ab8 -> :sswitch_16c
        0x2c718b5e -> :sswitch_15e
        0x2ee76568 -> :sswitch_150
        0x2fa3b7c1 -> :sswitch_142
        0x30dad0b6 -> :sswitch_134
        0x325216f4 -> :sswitch_126
        0x34d2237e -> :sswitch_118
        0x355d3ae4 -> :sswitch_10a
        0x36ff0eae -> :sswitch_fc
        0x3af2f364 -> :sswitch_ee
        0x3dafd0a9 -> :sswitch_e0
        0x3feaecf3 -> :sswitch_d2
        0x41440003 -> :sswitch_c4
        0x41fcb816 -> :sswitch_b6
        0x440b123c -> :sswitch_a8
        0x4783ad46 -> :sswitch_9a
        0x491afceb -> :sswitch_8c
        0x52c73411 -> :sswitch_7e
        0x55758c70 -> :sswitch_70
        0x5601f4c2 -> :sswitch_62
        0x591ab8bd -> :sswitch_54
        0x594828e4 -> :sswitch_46
        0x6b7e880d -> :sswitch_38
        0x712d3f30 -> :sswitch_2a
        0x7afa1289 -> :sswitch_1c
        0x7c2168dc -> :sswitch_e
    .end sparse-switch

    :pswitch_data_5da
    .packed-switch 0x0
        :pswitch_491
        :pswitch_48e
        :pswitch_48b
        :pswitch_488
        :pswitch_485
        :pswitch_482
        :pswitch_47f
        :pswitch_47c
        :pswitch_479
        :pswitch_476
        :pswitch_473
        :pswitch_470
        :pswitch_46d
        :pswitch_46a
        :pswitch_467
        :pswitch_464
        :pswitch_461
        :pswitch_45e
        :pswitch_45b
        :pswitch_458
        :pswitch_455
        :pswitch_452
        :pswitch_44f
        :pswitch_44c
        :pswitch_449
        :pswitch_446
        :pswitch_442
        :pswitch_43e
        :pswitch_43a
        :pswitch_436
        :pswitch_432
        :pswitch_436
        :pswitch_42e
        :pswitch_42a
        :pswitch_426
        :pswitch_422
        :pswitch_41e
        :pswitch_41a
        :pswitch_416
        :pswitch_412
        :pswitch_446
        :pswitch_40e
        :pswitch_40a
        :pswitch_406
        :pswitch_402
        :pswitch_3fe
        :pswitch_3fa
        :pswitch_3f6
        :pswitch_3f2
        :pswitch_3ee
        :pswitch_3ea
        :pswitch_3e6
        :pswitch_485
        :pswitch_3e2
        :pswitch_3de
        :pswitch_449
        :pswitch_3da
        :pswitch_3d6
        :pswitch_3d2
        :pswitch_461
        :pswitch_3ce
        :pswitch_3ca
        :pswitch_3c6
        :pswitch_3e6
        :pswitch_3c2
        :pswitch_3be
        :pswitch_3ba
        :pswitch_3b6
    .end packed-switch
.end method
