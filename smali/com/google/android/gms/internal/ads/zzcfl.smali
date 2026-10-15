###### Class com.google.android.gms.internal.ads.zzcfl (com.google.android.gms.internal.ads.zzcfl)
.class public Lcom/google/android/gms/internal/ads/zzcfl;
.super Lcom/google/android/gms/internal/ads/zzcep;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcei;Lcom/google/android/gms/internal/ads/zzawe;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcep;-><init>(Lcom/google/android/gms/internal/ads/zzcei;Lcom/google/android/gms/internal/ads/zzawe;Z)V

    return-void
.end method


# virtual methods
.method protected final P0(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .registers 6

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzcei;

    if-nez v0, :cond_b

    const-string p1, "Tried to intercept request from a WebView that wasn\'t an AdWebView."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcei;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcep;->I:Lcom/google/android/gms/internal/ads/zzbwb;

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzbwb;->a(Ljava/lang/String;Ljava/util/Map;I)V

    :cond_15
    new-instance v0, Ljava/io/File;

    .line 5
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mraid.js"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    if-nez p3, :cond_2c

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p3

    .line 8
    :cond_2c
    invoke-super {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzcep;->I(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 9
    :cond_31
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->J()Lcom/google/android/gms/internal/ads/zzcfv;

    move-result-object p2

    if-eqz p2, :cond_3e

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->J()Lcom/google/android/gms/internal/ads/zzcfv;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzcfv;->H()V

    .line 11
    :cond_3e
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->M()Lcom/google/android/gms/internal/ads/zzcfx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcfx;->i()Z

    move-result p2

    if-eqz p2, :cond_55

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbar;->M:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p2

    .line 14
    check-cast p2, Ljava/lang/String;

    goto :goto_74

    .line 15
    :cond_55
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->B()Z

    move-result p2

    if-eqz p2, :cond_68

    .line 16
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbar;->L:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p2

    .line 18
    check-cast p2, Ljava/lang/String;

    goto :goto_74

    .line 19
    :cond_68
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbar;->K:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p2

    .line 21
    check-cast p2, Ljava/lang/String;

    .line 22
    :goto_74
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 23
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->k()Lcom/google/android/gms/internal/ads/zzbzg;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbzg;->o:Ljava/lang/String;

    .line 24
    invoke-static {p3, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzs;->S(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
