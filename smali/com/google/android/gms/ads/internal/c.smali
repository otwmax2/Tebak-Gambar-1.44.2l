###### Class com.google.android.gms.ads.internal.c (com.google.android.gms.ads.internal.c)
.class final Lcom/google/android/gms/ads/internal/c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic o:Lcom/google/android/gms/ads/internal/zzs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzs;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/c;->o:Lcom/google/android/gms/ads/internal/zzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/c;->o:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->Wa(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/internal/ads/zzapw;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->Wa(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/internal/ads/zzapw;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzapw;->d(Landroid/view/MotionEvent;)V

    :cond_f
    const/4 p1, 0x0

    return p1
.end method
