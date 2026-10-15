###### Class com.google.android.gms.internal.ads.zzcmk (com.google.android.gms.internal.ads.zzcmk)
.class public final Lcom/google/android/gms/internal/ads/zzcmk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcls;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzdsf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdsf;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmk;->a:Lcom/google/android/gms/internal/ads/zzdsf;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .registers 4

    const-string v0, "test_mode_enabled"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmk;->a:Lcom/google/android/gms/internal/ads/zzdsf;

    const-string v1, "true"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdsf;->m(Z)V

    return-void
.end method
