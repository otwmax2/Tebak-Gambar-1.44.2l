###### Class com.google.android.gms.internal.ads.zzaby (com.google.android.gms.internal.ads.zzaby)
.class final Lcom/google/android/gms/internal/ads/zzaby;
.super Lcom/google/android/gms/internal/ads/zzzg;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaah;IJJ)V
    .registers 23

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzabv;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzabv;-><init>(Lcom/google/android/gms/internal/ads/zzaah;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzabx;

    const/4 v3, 0x0

    move/from16 v4, p2

    invoke-direct {v2, v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzabx;-><init>(Lcom/google/android/gms/internal/ads/zzaah;ILcom/google/android/gms/internal/ads/zzabw;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaah;->a()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzaah;->j:J

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaah;->d:I

    if-lez v5, :cond_26

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaah;->c:I

    int-to-long v9, v6

    int-to-long v5, v5

    add-long/2addr v5, v9

    const-wide/16 v9, 0x2

    div-long/2addr v5, v9

    const-wide/16 v9, 0x1

    add-long/2addr v5, v9

    move-wide v13, v5

    goto :goto_42

    .line 3
    :cond_26
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaah;->a:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaah;->b:I

    const-wide/16 v9, 0x1000

    if-ne v5, v6, :cond_31

    if-lez v5, :cond_31

    int-to-long v9, v5

    :cond_31
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaah;->g:I

    int-to-long v5, v5

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzaah;->h:I

    int-to-long v11, v11

    mul-long v9, v9, v5

    mul-long v9, v9, v11

    const-wide/16 v5, 0x8

    div-long/2addr v9, v5

    const-wide/16 v5, 0x40

    add-long/2addr v9, v5

    move-wide v13, v9

    :goto_42
    const-wide/16 v5, 0x0

    const/4 v9, 0x6

    .line 4
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaah;->c:I

    .line 5
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v0, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    .line 6
    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/internal/ads/zzzg;-><init>(Lcom/google/android/gms/internal/ads/zzzd;Lcom/google/android/gms/internal/ads/zzzf;JJJJJJI)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzabv (com.google.android.gms.internal.ads.zzabv)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzabv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzd;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzaah;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaah;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabv;->a:Lcom/google/android/gms/internal/ads/zzaah;

    return-void
.end method


# virtual methods
.method public final f1(J)J
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabv;->a:Lcom/google/android/gms/internal/ads/zzaah;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaah;->b(J)J

    move-result-wide p1

    return-wide p1
.end method
