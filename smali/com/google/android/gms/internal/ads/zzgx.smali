###### Class com.google.android.gms.internal.ads.zzgx (com.google.android.gms.internal.ads.zzgx)
.class final Lcom/google/android/gms/internal/ads/zzgx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field private final a:Landroid/os/Handler;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzgz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgz;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgx;->b:Lcom/google/android/gms/internal/ads/zzgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgx;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgx;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzgw;-><init>(Lcom/google/android/gms/internal/ads/zzgx;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzgw (com.google.android.gms.internal.ads.zzgw)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzgw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzgx;

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgx;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgw;->o:Lcom/google/android/gms/internal/ads/zzgx;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgw;->p:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->o:Lcom/google/android/gms/internal/ads/zzgx;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgw;->p:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgx;->b:Lcom/google/android/gms/internal/ads/zzgz;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgz;->c(Lcom/google/android/gms/internal/ads/zzgz;I)V

    return-void
.end method
