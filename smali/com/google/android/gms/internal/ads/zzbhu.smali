###### Class com.google.android.gms.internal.ads.zzbhu (com.google.android.gms.internal.ads.zzbhu)
.class public final Lcom/google/android/gms/internal/ads/zzbhu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhu;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 7

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->p()Lcom/google/android/gms/internal/ads/zzbxf;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhu;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbxf;->z(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    :cond_d
    const-string p1, "eventName"

    .line 2
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "eventId"

    .line 3
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x170bf

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_47

    const v1, 0x170c1

    if-eq v0, v1, :cond_3d

    const v1, 0x170c7

    if-eq v0, v1, :cond_33

    goto :goto_51

    :cond_33
    const-string v0, "_ai"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    const/4 p1, 0x1

    goto :goto_52

    :cond_3d
    const-string v0, "_ac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    const/4 p1, 0x0

    goto :goto_52

    :cond_47
    const-string v0, "_aa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    const/4 p1, 0x2

    goto :goto_52

    :cond_51
    :goto_51
    const/4 p1, -0x1

    :goto_52
    if-eqz p1, :cond_72

    if-eq p1, v3, :cond_68

    if-eq p1, v2, :cond_5e

    const-string p1, "logScionEvent gmsg contained unsupported eventName"

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_5e
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->p()Lcom/google/android/gms/internal/ads/zzbxf;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhu;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbxf;->p(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_68
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->p()Lcom/google/android/gms/internal/ads/zzbxf;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhu;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbxf;->s(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_72
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->p()Lcom/google/android/gms/internal/ads/zzbxf;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhu;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbxf;->r(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
