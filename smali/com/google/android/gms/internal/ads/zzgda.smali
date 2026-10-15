###### Class com.google.android.gms.internal.ads.zzgda (com.google.android.gms.internal.ads.zzgda)
.class public final Lcom/google/android/gms/internal/ads/zzgda;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/zzggm;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcz;-><init>(Lcom/google/android/gms/internal/ads/zzgcy;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgda;->a:Lcom/google/android/gms/internal/ads/zzggm;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzfxb;)Lcom/google/android/gms/internal/ads/zzggs;
    .registers 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzggo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzggo;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfxb;->b()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzggo;->b(Lcom/google/android/gms/internal/ads/zzggl;)Lcom/google/android/gms/internal/ads/zzggo;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfxb;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfwx;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfwx;->h()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4d

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4a

    const/4 v5, 0x3

    if-ne v4, v5, :cond_42

    .line 6
    sget-object v4, Lcom/google/android/gms/internal/ads/zzfwg;->d:Lcom/google/android/gms/internal/ads/zzfwg;

    goto :goto_4f

    .line 7
    :cond_42
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown key status"

    .line 8
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_4a
    sget-object v4, Lcom/google/android/gms/internal/ads/zzfwg;->c:Lcom/google/android/gms/internal/ads/zzfwg;

    goto :goto_4f

    .line 10
    :cond_4d
    sget-object v4, Lcom/google/android/gms/internal/ads/zzfwg;->b:Lcom/google/android/gms/internal/ads/zzfwg;

    .line 11
    :goto_4f
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfwx;->a()I

    move-result v5

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfwx;->f()Ljava/lang/String;

    move-result-object v6

    const-string v7, "type.googleapis.com/google.crypto."

    .line 13
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_65

    const/16 v7, 0x22

    .line 14
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 15
    :cond_65
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfwx;->c()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-virtual {v0, v4, v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzggo;->a(Lcom/google/android/gms/internal/ads/zzfwg;ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzggo;

    goto :goto_24

    :cond_71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfxb;->a()Lcom/google/android/gms/internal/ads/zzfwx;

    move-result-object v1

    if-eqz v1, :cond_82

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfxb;->a()Lcom/google/android/gms/internal/ads/zzfwx;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwx;->a()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzggo;->c(I)Lcom/google/android/gms/internal/ads/zzggo;

    .line 18
    :cond_82
    :try_start_82
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzggo;->d()Lcom/google/android/gms/internal/ads/zzggs;

    move-result-object p0
    :try_end_86
    .catch Ljava/security/GeneralSecurityException; {:try_start_82 .. :try_end_86} :catch_87

    return-object p0

    :catch_87
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_8f

    :goto_8e
    throw v0

    :goto_8f
    goto :goto_8e
.end method
