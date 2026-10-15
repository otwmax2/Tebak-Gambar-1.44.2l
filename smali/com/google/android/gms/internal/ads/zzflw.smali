###### Class com.google.android.gms.internal.ads.zzflw (com.google.android.gms.internal.ads.zzflw)
.class final Lcom/google/android/gms/internal/ads/zzflw;
.super Lcom/google/android/gms/internal/ads/zzfmi;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzfmc;

.field final synthetic p:Lcom/google/android/gms/internal/ads/zzflx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzflx;Lcom/google/android/gms/internal/ads/zzfmc;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflw;->p:Lcom/google/android/gms/internal/ads/zzflx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfmi;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzflw;->o:Lcom/google/android/gms/internal/ads/zzfmc;

    return-void
.end method


# virtual methods
.method public final B7(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "statusCode"

    const/16 v1, 0x1fd6

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "sessionToken"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmb;->c()Lcom/google/android/gms/internal/ads/zzfma;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfma;->b(I)Lcom/google/android/gms/internal/ads/zzfma;

    if-eqz p1, :cond_1a

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfma;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfma;

    :cond_1a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzflw;->o:Lcom/google/android/gms/internal/ads/zzfmc;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfma;->c()Lcom/google/android/gms/internal/ads/zzfmb;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzfmc;->a(Lcom/google/android/gms/internal/ads/zzfmb;)V

    const/16 p1, 0x1fdd

    if-ne v0, p1, :cond_2c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzflw;->p:Lcom/google/android/gms/internal/ads/zzflx;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflx;->c()V

    :cond_2c
    return-void
.end method
