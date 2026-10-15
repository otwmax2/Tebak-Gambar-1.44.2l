###### Class com.google.android.gms.internal.ads.zzbts (com.google.android.gms.internal.ads.zzbts)
.class public final Lcom/google/android/gms/internal/ads/zzbts;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:I

.field public final m:F

.field public final n:I

.field public final o:I

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;


# direct methods
.method constructor <init>(IZZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIFIIDZZILjava/lang/String;ZLjava/lang/String;)V
    .registers 33
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p2

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbts;->a:Z

    move v1, p3

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbts;->b:Z

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbts;->c:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbts;->d:Ljava/lang/String;

    move v1, p6

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbts;->e:Z

    move v1, p7

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbts;->f:Z

    move v1, p8

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbts;->g:Z

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbts;->h:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbts;->i:Ljava/lang/String;

    move/from16 v1, p15

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzbts;->k:I

    move/from16 v1, p16

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzbts;->l:I

    move/from16 v1, p20

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzbts;->m:F

    move/from16 v1, p21

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzbts;->n:I

    move/from16 v1, p22

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzbts;->o:I

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbts;->p:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbts;->j:Ljava/lang/String;

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbts;->q:Ljava/lang/String;

    return-void
.end method
