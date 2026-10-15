###### Class com.google.android.gms.internal.ads.zzfxh (com.google.android.gms.internal.ads.zzfxh)
.class final Lcom/google/android/gms/internal/ads/zzfxh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfxh;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzgll;)Lcom/google/android/gms/internal/ads/zzglq;
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzglq;->I()Lcom/google/android/gms/internal/ads/zzgln;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgll;->J()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgln;->p(I)Lcom/google/android/gms/internal/ads/zzgln;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgll;->P()Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzglk;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzglp;->I()Lcom/google/android/gms/internal/ads/zzglo;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzglk;->J()Lcom/google/android/gms/internal/ads/zzgky;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgky;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzglo;->q(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzglo;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzglk;->R()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzglo;->r(I)Lcom/google/android/gms/internal/ads/zzglo;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzglk;->M()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzglo;->p(Lcom/google/android/gms/internal/ads/zzgme;)Lcom/google/android/gms/internal/ads/zzglo;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzglk;->I()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzglo;->o(I)Lcom/google/android/gms/internal/ads/zzglo;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzglp;

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgln;->o(Lcom/google/android/gms/internal/ads/zzglp;)Lcom/google/android/gms/internal/ads/zzgln;

    goto :goto_13

    .line 10
    :cond_4d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzglq;

    return-object p0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/zzgll;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgll;->J()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgll;->P()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzglk;

    .line 2
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzglk;->R()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_11

    .line 3
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzglk;->Q()Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 4
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzglk;->M()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/ads/zzgme;->p:Lcom/google/android/gms/internal/ads/zzgme;

    if-eq v7, v8, :cond_76

    .line 5
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzglk;->R()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5e

    .line 6
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzglk;->I()I

    move-result v7

    if-ne v7, v0, :cond_4b

    if-nez v4, :cond_43

    const/4 v4, 0x1

    goto :goto_4b

    .line 7
    :cond_43
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset contains multiple primary keys"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_4b
    :goto_4b
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzglk;->J()Lcom/google/android/gms/internal/ads/zzgky;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgky;->J()Lcom/google/android/gms/internal/ads/zzgkx;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/ads/zzgkx;->s:Lcom/google/android/gms/internal/ads/zzgkx;

    if-eq v6, v7, :cond_59

    const/4 v6, 0x0

    goto :goto_5a

    :cond_59
    const/4 v6, 0x1

    :goto_5a
    and-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 9
    :cond_5e
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-array v0, v2, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzglk;->I()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "key %d has unknown status"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_76
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-array v0, v2, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzglk;->I()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "key %d has unknown prefix"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_8e
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzglk;->I()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "key %d has no key data"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a6
    if-eqz v3, :cond_b6

    if-nez v4, :cond_b5

    if-eqz v5, :cond_ad

    goto :goto_b5

    .line 14
    :cond_ad
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset doesn\'t contain a valid primary key"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b5
    :goto_b5
    return-void

    .line 15
    :cond_b6
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset must contain at least one ENABLED key"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_bf

    :goto_be
    throw p0

    :goto_bf
    goto :goto_be
.end method
