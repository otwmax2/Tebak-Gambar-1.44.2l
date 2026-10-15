###### Class com.google.android.gms.internal.ads.zzhj (com.google.android.gms.internal.ads.zzhj)
.class public final Lcom/google/android/gms/internal/ads/zzhj;
.super Lcom/google/android/gms/internal/ads/zzbw;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final D:Lcom/google/android/gms/internal/ads/zzn;

.field private static final E:Ljava/lang/String;

.field private static final F:Ljava/lang/String;

.field private static final G:Ljava/lang/String;

.field private static final H:Ljava/lang/String;

.field private static final I:Ljava/lang/String;

.field private static final J:Ljava/lang/String;


# instance fields
.field public final A:I

.field public final B:Lcom/google/android/gms/internal/ads/zzbn;

.field final C:Z

.field public final w:I

.field public final x:Ljava/lang/String;

.field public final y:I

.field public final z:Lcom/google/android/gms/internal/ads/zzaf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhi;->a:Lcom/google/android/gms/internal/ads/zzhi;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhj;->D:Lcom/google/android/gms/internal/ads/zzn;

    const/16 v0, 0x3e9

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhj;->E:Ljava/lang/String;

    const/16 v0, 0x3ea

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhj;->F:Ljava/lang/String;

    const/16 v0, 0x3eb

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhj;->G:Ljava/lang/String;

    const/16 v0, 0x3ec

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhj;->H:Ljava/lang/String;

    const/16 v0, 0x3ed

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhj;->I:Ljava/lang/String;

    const/16 v0, 0x3ee

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhj;->J:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;I)V
    .registers 14

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzhj;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/google/android/gms/internal/ads/zzaf;IZ)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/google/android/gms/internal/ads/zzaf;IZ)V
    .registers 23

    move v4, p1

    if-eqz v4, :cond_3e

    const/4 v0, 0x1

    if-eq v4, v0, :cond_d

    const-string v0, "Unexpected runtime error"

    move-object/from16 v5, p5

    move/from16 v6, p6

    goto :goto_44

    .line 2
    :cond_d
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static/range {p8 .. p8}, Lcom/google/android/gms/internal/ads/zzew;->m(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, p5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error, index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", format_supported="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    :cond_3e
    move-object/from16 v5, p5

    move/from16 v6, p6

    const-string v0, "Source error"

    :goto_44
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_51

    const-string v1, ": null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_51
    move-object v1, v0

    const/4 v9, 0x0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object v0, p0

    move-object v2, p2

    move/from16 v3, p4

    move v4, p1

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v12, p9

    .line 6
    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/zzhj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/google/android/gms/internal/ads/zzaf;ILcom/google/android/gms/internal/ads/zzbn;JZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/google/android/gms/internal/ads/zzaf;ILcom/google/android/gms/internal/ads/zzbn;JZ)V
    .registers 21

    move-object v6, p0

    move/from16 v7, p12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p10

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbw;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v7, :cond_17

    move v2, p4

    if-ne v2, v1, :cond_15

    const/4 v2, 0x1

    goto :goto_18

    :cond_15
    const/4 v3, 0x0

    goto :goto_19

    :cond_17
    move v2, p4

    :goto_18
    const/4 v3, 0x1

    .line 8
    :goto_19
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdl;->d(Z)V

    if-nez p2, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x1

    .line 9
    :goto_20
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->d(Z)V

    iput v2, v6, Lcom/google/android/gms/internal/ads/zzhj;->w:I

    move-object v0, p5

    iput-object v0, v6, Lcom/google/android/gms/internal/ads/zzhj;->x:Ljava/lang/String;

    move v0, p6

    iput v0, v6, Lcom/google/android/gms/internal/ads/zzhj;->y:I

    move-object v0, p7

    iput-object v0, v6, Lcom/google/android/gms/internal/ads/zzhj;->z:Lcom/google/android/gms/internal/ads/zzaf;

    move/from16 v0, p8

    iput v0, v6, Lcom/google/android/gms/internal/ads/zzhj;->A:I

    move-object/from16 v0, p9

    iput-object v0, v6, Lcom/google/android/gms/internal/ads/zzhj;->B:Lcom/google/android/gms/internal/ads/zzbn;

    iput-boolean v7, v6, Lcom/google/android/gms/internal/ads/zzhj;->C:Z

    return-void
.end method

.method public static b(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzaf;IZI)Lcom/google/android/gms/internal/ads/zzhj;
    .registers 18

    .line 1
    new-instance v10, Lcom/google/android/gms/internal/ads/zzhj;

    if-nez p3, :cond_7

    const/4 v0, 0x4

    const/4 v8, 0x4

    goto :goto_8

    :cond_7
    move v8, p4

    :goto_8
    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v0, v10

    move-object v2, p0

    move/from16 v4, p6

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzhj;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/google/android/gms/internal/ads/zzaf;IZ)V

    return-object v10
.end method

.method public static c(Ljava/io/IOException;I)Lcom/google/android/gms/internal/ads/zzhj;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhj;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzhj;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static d(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzhj;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhj;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzhj;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ads/zzbn;)Lcom/google/android/gms/internal/ads/zzhj;
    .registers 16

    .line 1
    new-instance v13, Lcom/google/android/gms/internal/ads/zzhj;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbw;->o:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzhj;->w:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhj;->x:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzhj;->y:I

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzhj;->z:Lcom/google/android/gms/internal/ads/zzaf;

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzhj;->A:I

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/zzbw;->p:J

    iget-boolean v12, p0, Lcom/google/android/gms/internal/ads/zzhj;->C:Z

    move-object v0, v13

    move-object v9, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/zzhj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/google/android/gms/internal/ads/zzaf;ILcom/google/android/gms/internal/ads/zzbn;JZ)V

    return-object v13
.end method

###### Class com.google.android.gms.internal.ads.zzhi (com.google.android.gms.internal.ads.zzhi)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzhi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzn;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzhi;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhi;->a:Lcom/google/android/gms/internal/ads/zzhi;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
