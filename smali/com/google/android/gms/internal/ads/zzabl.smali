###### Class com.google.android.gms.internal.ads.zzabl (com.google.android.gms.internal.ads.zzabl)
.class final Lcom/google/android/gms/internal/ads/zzabl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaax;


# instance fields
.field private final a:J

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzabo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzabo;J)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabl;->b:Lcom/google/android/gms/internal/ads/zzabo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzabl;->a:J

    return-void
.end method


# virtual methods
.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->a:J

    return-wide v0
.end method

.method public final c(J)Lcom/google/android/gms/internal/ads/zzaav;
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->b:Lcom/google/android/gms/internal/ads/zzabo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabo;->b(Lcom/google/android/gms/internal/ads/zzabo;)[Lcom/google/android/gms/internal/ads/zzabr;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzabr;->a(J)Lcom/google/android/gms/internal/ads/zzaav;

    move-result-object v0

    const/4 v1, 0x1

    :goto_e
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzabl;->b:Lcom/google/android/gms/internal/ads/zzabo;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzabo;->b(Lcom/google/android/gms/internal/ads/zzabo;)[Lcom/google/android/gms/internal/ads/zzabr;

    move-result-object v3

    .line 2
    array-length v3, v3

    if-ge v1, v3, :cond_31

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzabo;->b(Lcom/google/android/gms/internal/ads/zzabo;)[Lcom/google/android/gms/internal/ads/zzabr;

    move-result-object v2

    .line 3
    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzabr;->a(J)Lcom/google/android/gms/internal/ads/zzaav;

    move-result-object v2

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaav;->a:Lcom/google/android/gms/internal/ads/zzaay;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzaay;->b:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaav;->a:Lcom/google/android/gms/internal/ads/zzaay;

    iget-wide v5, v5, Lcom/google/android/gms/internal/ads/zzaay;->b:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_2e

    move-object v0, v2

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_31
    return-object v0
.end method

.method public final f()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
