###### Class com.google.android.gms.internal.ads.zzbdy (com.google.android.gms.internal.ads.zzbdy)
.class public final Lcom/google/android/gms/internal/ads/zzbdy;
.super Lcom/google/android/gms/ads/formats/NativeAd$Image;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbdx;

.field private final b:Landroid/graphics/drawable/Drawable;

.field private final c:Landroid/net/Uri;

.field private final d:D

.field private final e:I

.field private final f:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbdx;)V
    .registers 5

    const-string v0, ""

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdy;->a:Lcom/google/android/gms/internal/ads/zzbdx;

    const/4 v1, 0x0

    :try_start_8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->c()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->t1(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_15

    goto :goto_1a

    :catch_15
    move-exception p1

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    move-object p1, v1

    .line 4
    :goto_1a
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdy;->b:Landroid/graphics/drawable/Drawable;

    :try_start_1c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdy;->a:Lcom/google/android/gms/internal/ads/zzbdx;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->b()Landroid/net/Uri;

    move-result-object v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p1

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :goto_27
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdy;->c:Landroid/net/Uri;

    :try_start_29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdy;->a:Lcom/google/android/gms/internal/ads/zzbdx;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->zzb()D

    move-result-wide v1
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2f} :catch_30

    goto :goto_36

    :catch_30
    move-exception p1

    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 10
    :goto_36
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbdy;->d:D

    const/4 p1, -0x1

    :try_start_39
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdy;->a:Lcom/google/android/gms/internal/ads/zzbdx;

    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbdx;->d()I

    move-result v1
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3f} :catch_40

    goto :goto_45

    :catch_40
    move-exception v1

    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, -0x1

    .line 13
    :goto_45
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbdy;->e:I

    :try_start_47
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdy;->a:Lcom/google/android/gms/internal/ads/zzbdx;

    .line 14
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbdx;->a()I

    move-result p1
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4d} :catch_4e

    goto :goto_52

    :catch_4e
    move-exception v1

    .line 15
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :goto_52
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdy;->f:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdy;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final b()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbdy;->d:D

    return-wide v0
.end method

.method public final c()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdy;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdy;->f:I

    return v0
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdy;->e:I

    return v0
.end method
