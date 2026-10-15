###### Class com.google.android.gms.internal.ads.zzfxm (com.google.android.gms.internal.ads.zzfxm)
.class final Lcom/google/android/gms/internal/ads/zzfxm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfvo;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfxb;

.field private final b:Lcom/google/android/gms/internal/ads/zzggm;

.field private final c:Lcom/google/android/gms/internal/ads/zzggm;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfxb;Lcom/google/android/gms/internal/ads/zzfxl;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfxm;->a:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxb;->f()Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdd;->a()Lcom/google/android/gms/internal/ads/zzgdd;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgdd;->b()Lcom/google/android/gms/internal/ads/zzggn;

    move-result-object p2

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgda;->a(Lcom/google/android/gms/internal/ads/zzfxb;)Lcom/google/android/gms/internal/ads/zzggs;

    move-result-object p1

    const-string v0, "aead"

    const-string v1, "encrypt"

    .line 4
    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzggn;->a(Lcom/google/android/gms/internal/ads/zzggs;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfxm;->b:Lcom/google/android/gms/internal/ads/zzggm;

    const-string v1, "decrypt"

    .line 5
    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzggn;->a(Lcom/google/android/gms/internal/ads/zzggs;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object p1

    :goto_27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfxm;->c:Lcom/google/android/gms/internal/ads/zzggm;

    return-void

    :cond_2a
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgda;->a:Lcom/google/android/gms/internal/ads/zzggm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfxm;->b:Lcom/google/android/gms/internal/ads/zzggm;

    goto :goto_27
.end method


# virtual methods
.method public final a([B[B)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x5

    if-le v0, v1, :cond_4a

    .line 2
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 3
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfxm;->a:Lcom/google/android/gms/internal/ads/zzfxb;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfxb;->e([B)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfwx;

    .line 6
    :try_start_22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfwx;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfvo;

    invoke-interface {v3, v0, p2}, Lcom/google/android/gms/internal/ads/zzfvo;->a([B[B)[B

    move-result-object v3

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfwx;->a()I

    array-length p1, v0
    :try_end_30
    .catch Ljava/security/GeneralSecurityException; {:try_start_22 .. :try_end_30} :catch_31

    return-object v3

    :catch_31
    move-exception v2

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxn;->b()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ciphertext prefix matches a key, but cannot decrypt: "

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.google.crypto.tink.aead.AeadWrapper$WrappedAead"

    const-string v6, "decrypt"

    invoke-virtual {v3, v4, v5, v6, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 9
    :cond_4a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxm;->a:Lcom/google/android/gms/internal/ads/zzfxb;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfvt;->a:[B

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxb;->e([B)Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfwx;

    .line 12
    :try_start_62
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfwx;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfvo;

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzfvo;->a([B[B)[B

    move-result-object v2

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfwx;->a()I
    :try_end_6f
    .catch Ljava/security/GeneralSecurityException; {:try_start_62 .. :try_end_6f} :catch_70

    return-object v2

    :catch_70
    nop

    goto :goto_56

    .line 14
    :cond_72
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "decryption failed"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_7b

    :goto_7a
    throw p1

    :goto_7b
    goto :goto_7a
.end method

.method public final b([B[B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfxm;->a:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfxb;->a()Lcom/google/android/gms/internal/ads/zzfwx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfwx;->g()[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfxm;->a:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfxb;->a()Lcom/google/android/gms/internal/ads/zzfwx;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfwx;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfvo;

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzfvo;->b([B[B)[B

    move-result-object p2

    aput-object p2, v0, v1

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmv;->b([[B)[B

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxm;->a:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfxb;->a()Lcom/google/android/gms/internal/ads/zzfwx;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwx;->a()I

    array-length p1, p1
    :try_end_31
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_31} :catch_32

    return-object p2

    :catch_32
    move-exception p1

    .line 5
    throw p1
.end method
