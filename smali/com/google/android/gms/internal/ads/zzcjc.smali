###### Class com.google.android.gms.internal.ads.zzcjc (com.google.android.gms.internal.ads.zzcjc)
.class final Lcom/google/android/gms/internal/ads/zzcjc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdqj;


# instance fields
.field private final a:Ljava/lang/Long;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/zzchy;

.field private final d:Lcom/google/android/gms/internal/ads/zzcjg;

.field private final e:Lcom/google/android/gms/internal/ads/zzcjc;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzchy;Lcom/google/android/gms/internal/ads/zzcjg;Ljava/lang/Long;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcjb;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzcjc;->e:Lcom/google/android/gms/internal/ads/zzcjc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjc;->c:Lcom/google/android/gms/internal/ads/zzchy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjc;->d:Lcom/google/android/gms/internal/ads/zzcjg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjc;->a:Ljava/lang/Long;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcjc;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdqt;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjc;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjc;->d:Lcom/google/android/gms/internal/ads/zzcjg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcjg;->a(Lcom/google/android/gms/internal/ads/zzcjg;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcjg;->b(Lcom/google/android/gms/internal/ads/zzcjg;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcjc;->c:Lcom/google/android/gms/internal/ads/zzchy;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcjc;->b:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdqu;->a(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdqm;Lcom/google/android/gms/internal/ads/zzcgd;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdqt;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzdqx;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjc;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjc;->d:Lcom/google/android/gms/internal/ads/zzcjg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcjg;->a(Lcom/google/android/gms/internal/ads/zzcjg;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcjg;->b(Lcom/google/android/gms/internal/ads/zzcjg;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcjc;->c:Lcom/google/android/gms/internal/ads/zzchy;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcjc;->b:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdqy;->a(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdqm;Lcom/google/android/gms/internal/ads/zzcgd;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdqx;

    move-result-object v0

    return-object v0
.end method
