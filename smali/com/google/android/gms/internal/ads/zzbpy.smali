###### Class com.google.android.gms.internal.ads.zzbpy (com.google.android.gms.internal.ads.zzbpy)
.class final Lcom/google/android/gms/internal/ads/zzbpy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzbpz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbpz;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpy;->o:Lcom/google/android/gms/internal/ads/zzbpz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpy;->o:Lcom/google/android/gms/internal/ads/zzbpz;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbpz;->h(Z)V

    return-void
.end method
