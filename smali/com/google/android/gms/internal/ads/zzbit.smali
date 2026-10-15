###### Class com.google.android.gms.internal.ads.zzbit (com.google.android.gms.internal.ads.zzbit)
.class public final Lcom/google/android/gms/internal/ads/zzbit;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;

.field private c:Lcom/google/android/gms/internal/ads/zzbip;


# direct methods
.method public static final b(Ljava/lang/String;)Z
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->O8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    .line 4
    :cond_14
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->Q8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v0, v2, :cond_33

    const-string p0, "H5 GMSG exceeds max length"

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    return v1

    .line 9
    :cond_33
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gmsg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 11
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mobileads.google.com"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 12
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/h5ads"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5d

    const/4 p0, 0x1

    return p0

    :cond_5d
    return v1
.end method

.method private final c()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbit;->c:Lcom/google/android/gms/internal/ads/zzbip;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->a()Lcom/google/android/gms/ads/internal/client/zzaw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbit;->a:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbnc;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbnc;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbit;->b:Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/client/zzaw;->j(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbnf;Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;)Lcom/google/android/gms/internal/ads/zzbip;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbit;->c:Lcom/google/android/gms/internal/ads/zzbip;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbit;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2
    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbit;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbit;->c:Lcom/google/android/gms/internal/ads/zzbip;

    if-eqz v0, :cond_1b

    .line 3
    :try_start_f
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbip;->I(Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_19
    const/4 p1, 0x1

    return p1

    :cond_1b
    return v1
.end method
