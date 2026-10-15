###### Class com.google.android.gms.internal.ads.zzcoi (com.google.android.gms.internal.ads.zzcoi)
.class public final Lcom/google/android/gms/internal/ads/zzcoi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzcoh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcoh;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoi;->a:Lcom/google/android/gms/internal/ads/zzcoh;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/ViewGroup;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoi;->a:Lcom/google/android/gms/internal/ads/zzcoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcoh;->a()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoi;->a:Lcom/google/android/gms/internal/ads/zzcoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcoh;->a()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method
