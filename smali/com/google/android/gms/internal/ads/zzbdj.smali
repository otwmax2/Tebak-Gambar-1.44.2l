###### Class com.google.android.gms.internal.ads.zzbdj (com.google.android.gms.internal.ads.zzbdj)
.class public final Lcom/google/android/gms/internal/ads/zzbdj;
.super Lcom/google/android/gms/internal/ads/zzbdw;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final o:Landroid/graphics/drawable/Drawable;

.field private final p:Landroid/net/Uri;

.field private final q:D

.field private final r:I

.field private final s:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdj;->o:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdj;->p:Landroid/net/Uri;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzbdj;->q:D

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzbdj;->r:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzbdj;->s:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdj;->s:I

    return v0
.end method

.method public final b()Landroid/net/Uri;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdj;->p:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdj;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdj;->r:I

    return v0
.end method

.method public final zzb()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbdj;->q:D

    return-wide v0
.end method
