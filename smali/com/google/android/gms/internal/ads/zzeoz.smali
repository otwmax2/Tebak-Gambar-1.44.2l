###### Class com.google.android.gms.internal.ads.zzeoz (com.google.android.gms.internal.ads.zzeoz)
.class public final Lcom/google/android/gms/internal/ads/zzeoz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepm;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeoz;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeoz;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeoz;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeoz;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeoz;->e:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .registers 5

    .line 1
    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoz;->a:Ljava/lang/String;

    const-string v1, "gmp_app_id"

    .line 2
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzezi;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoz;->b:Ljava/lang/String;

    const-string v1, "fbs_aiid"

    .line 3
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzezi;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoz;->c:Ljava/lang/String;

    const-string v1, "fbs_aeid"

    .line 4
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzezi;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoz;->d:Ljava/lang/String;

    const-string v1, "apm_id_origin"

    .line 5
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzezi;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoz;->e:Ljava/lang/Long;

    if-eqz v0, :cond_2b

    .line 6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "sai_timeout"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2b
    return-void
.end method
