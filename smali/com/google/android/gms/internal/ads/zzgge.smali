###### Class com.google.android.gms.internal.ads.zzgge (com.google.android.gms.internal.ads.zzgge)
.class final Lcom/google/android/gms/internal/ads/zzgge;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfws;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfxb;

.field private final b:Lcom/google/android/gms/internal/ads/zzggm;

.field private final c:Lcom/google/android/gms/internal/ads/zzggm;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfxb;Lcom/google/android/gms/internal/ads/zzggd;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgge;->a:Lcom/google/android/gms/internal/ads/zzfxb;

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

    const-string v0, "mac"

    const-string v1, "compute"

    .line 4
    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzggn;->a(Lcom/google/android/gms/internal/ads/zzggs;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgge;->b:Lcom/google/android/gms/internal/ads/zzggm;

    const-string v1, "verify"

    .line 5
    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzggn;->a(Lcom/google/android/gms/internal/ads/zzggs;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object p1

    :goto_27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgge;->c:Lcom/google/android/gms/internal/ads/zzggm;

    return-void

    :cond_2a
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgda;->a:Lcom/google/android/gms/internal/ads/zzggm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgge;->b:Lcom/google/android/gms/internal/ads/zzggm;

    goto :goto_27
.end method


# virtual methods
.method public final a([B[B)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x5

    if-le v0, v1, :cond_96

    .line 2
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 3
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgge;->a:Lcom/google/android/gms/internal/ads/zzfxb;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfxb;->e([B)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfwx;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfwx;->c()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgme;->r:Lcom/google/android/gms/internal/ads/zzgme;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    const/4 v3, 0x2

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggf;->d()[B

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgmv;->b([[B)[B

    move-result-object v3

    goto :goto_41

    :cond_40
    move-object v3, p2

    .line 8
    :goto_41
    :try_start_41
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfwx;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfws;

    invoke-interface {v4, v0, v3}, Lcom/google/android/gms/internal/ads/zzfws;->a([B[B)V

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfwx;->a()I
    :try_end_4d
    .catch Ljava/security/GeneralSecurityException; {:try_start_41 .. :try_end_4d} :catch_4e

    return-void

    :catch_4e
    move-exception v2

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggf;->b()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "tag prefix matches a key, but cannot verify: "

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.google.crypto.tink.mac.MacWrapper$WrappedMac"

    const-string v6, "verifyMac"

    invoke-virtual {v3, v4, v5, v6, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 11
    :cond_67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgge;->a:Lcom/google/android/gms/internal/ads/zzfxb;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfvt;->a:[B

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxb;->e([B)Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_73
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfwx;

    .line 14
    :try_start_7f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfwx;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfws;

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzfws;->a([B[B)V

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfwx;->a()I
    :try_end_8b
    .catch Ljava/security/GeneralSecurityException; {:try_start_7f .. :try_end_8b} :catch_8c

    return-void

    :catch_8c
    nop

    goto :goto_73

    .line 16
    :cond_8e
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid MAC"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_96
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "tag too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_9f

    :goto_9e
    throw p1

    :goto_9f
    goto :goto_9e
.end method

.method public final a0([B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgge;->a:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfxb;->a()Lcom/google/android/gms/internal/ads/zzfwx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwx;->c()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgme;->r:Lcom/google/android/gms/internal/ads/zzgme;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_23

    new-array v0, v3, [[B

    aput-object p1, v0, v2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggf;->d()[B

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmv;->b([[B)[B

    move-result-object p1

    :cond_23
    :try_start_23
    new-array v0, v3, [[B

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgge;->a:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfxb;->a()Lcom/google/android/gms/internal/ads/zzfwx;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfwx;->g()[B

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgge;->a:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfxb;->a()Lcom/google/android/gms/internal/ads/zzfwx;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfwx;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfws;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzfws;->a0([B)[B

    move-result-object p1

    aput-object p1, v0, v1

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmv;->b([[B)[B

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgge;->a:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfxb;->a()Lcom/google/android/gms/internal/ads/zzfwx;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwx;->a()I
    :try_end_50
    .catch Ljava/security/GeneralSecurityException; {:try_start_23 .. :try_end_50} :catch_51

    return-object p1

    :catch_51
    move-exception p1

    .line 7
    throw p1
.end method
