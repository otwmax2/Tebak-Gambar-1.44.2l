###### Class com.google.android.gms.ads.internal.client.zzq (com.google.android.gms.ads.internal.client.zzq)
.class public final Lcom/google/android/gms/ads/internal/client/zzq;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/ads/internal/client/zzq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public B:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public C:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public final o:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public final p:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public final q:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public final r:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public final s:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public final t:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public final u:[Lcom/google/android/gms/ads/internal/client/zzq;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public final v:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public final w:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public x:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public y:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public z:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 17

    const-string v1, "interstitial_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/ads/internal/client/zzq;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/ads/internal/client/zzq;ZZZZZZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/ads/AdSize;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/client/zzq;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V
    .registers 16

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    .line 4
    aget-object v1, p2, v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzq;->r:Z

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->f()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/client/zzq;->w:Z

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/ads/zzb;->f(Lcom/google/android/gms/ads/AdSize;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/zzq;->A:Z

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/ads/zzb;->g(Lcom/google/android/gms/ads/AdSize;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/zzq;->B:Z

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/ads/zzb;->h(Lcom/google/android/gms/ads/AdSize;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/zzq;->C:Z

    if-eqz v2, :cond_31

    sget-object v3, Lcom/google/android/gms/ads/AdSize;->i:Lcom/google/android/gms/ads/AdSize;

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdSize;->d()I

    move-result v4

    iput v4, p0, Lcom/google/android/gms/ads/internal/client/zzq;->s:I

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdSize;->b()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/ads/internal/client/zzq;->p:I

    goto :goto_5d

    .line 11
    :cond_31
    iget-boolean v4, p0, Lcom/google/android/gms/ads/internal/client/zzq;->B:Z

    if-eqz v4, :cond_42

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->d()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/ads/internal/client/zzq;->s:I

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/ads/zzb;->a(Lcom/google/android/gms/ads/AdSize;)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/ads/internal/client/zzq;->p:I

    goto :goto_5d

    :cond_42
    if-eqz v3, :cond_51

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->d()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/ads/internal/client/zzq;->s:I

    .line 15
    invoke-static {v1}, Lcom/google/android/gms/ads/zzb;->b(Lcom/google/android/gms/ads/AdSize;)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/ads/internal/client/zzq;->p:I

    goto :goto_5d

    .line 16
    :cond_51
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->d()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/ads/internal/client/zzq;->s:I

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->b()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/ads/internal/client/zzq;->p:I

    .line 18
    :goto_5d
    iget v4, p0, Lcom/google/android/gms/ads/internal/client/zzq;->s:I

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_65

    const/4 v4, 0x1

    goto :goto_66

    :cond_65
    const/4 v4, 0x0

    :goto_66
    const/4 v5, -0x2

    if-ne v3, v5, :cond_6b

    const/4 v3, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v3, 0x0

    .line 19
    :goto_6c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    if-eqz v4, :cond_106

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_87

    goto :goto_e8

    .line 22
    :cond_87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 23
    iget v8, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v8, v7

    float-to-int v7, v8

    const/16 v8, 0x258

    if-ge v7, v8, :cond_e8

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const-string v8, "window"

    .line 26
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    if-eqz v8, :cond_e8

    .line 27
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 28
    invoke-virtual {v8, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 29
    iget v9, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 30
    iget v10, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 31
    invoke-virtual {v8, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 32
    iget v8, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 33
    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v8, v9, :cond_e8

    if-ne v7, v10, :cond_e8

    .line 34
    iget v7, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 35
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "navigation_bar_width"

    const-string v10, "dimen"

    const-string v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_e3

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_e4

    :cond_e3
    const/4 v8, 0x0

    :goto_e4
    sub-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/gms/ads/internal/client/zzq;->t:I

    goto :goto_ec

    .line 38
    :cond_e8
    :goto_e8
    iget v7, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, p0, Lcom/google/android/gms/ads/internal/client/zzq;->t:I

    .line 39
    :goto_ec
    iget v8, v5, Landroid/util/DisplayMetrics;->density:F

    int-to-float v7, v7

    div-float/2addr v7, v8

    float-to-double v7, v7

    double-to-int v9, v7

    int-to-double v10, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v10

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v12, v7, v10

    if-ltz v12, :cond_113

    add-int/lit8 v9, v9, 0x1

    goto :goto_113

    .line 40
    :cond_106
    iget v9, p0, Lcom/google/android/gms/ads/internal/client/zzq;->s:I

    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    iget v7, p0, Lcom/google/android/gms/ads/internal/client/zzq;->s:I

    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzbyt;->v(Landroid/util/DisplayMetrics;I)I

    move-result v7

    iput v7, p0, Lcom/google/android/gms/ads/internal/client/zzq;->t:I

    :cond_113
    :goto_113
    if-eqz v3, :cond_11a

    .line 42
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/client/zzq;->a4(Landroid/util/DisplayMetrics;)I

    move-result v7

    goto :goto_11c

    .line 43
    :cond_11a
    iget v7, p0, Lcom/google/android/gms/ads/internal/client/zzq;->p:I

    .line 44
    :goto_11c
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzbyt;->v(Landroid/util/DisplayMetrics;I)I

    move-result v5

    iput v5, p0, Lcom/google/android/gms/ads/internal/client/zzq;->q:I

    const-string v5, "_as"

    const-string v8, "x"

    if-nez v4, :cond_15f

    if-eqz v3, :cond_12e

    goto :goto_15f

    .line 45
    :cond_12e
    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/zzq;->B:Z

    if-nez v3, :cond_143

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/zzq;->C:Z

    if-eqz v3, :cond_137

    goto :goto_143

    :cond_137
    if-eqz v2, :cond_13c

    const-string v1, "320x50_mb"

    goto :goto_15c

    .line 46
    :cond_13c
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzq;->o:Ljava/lang/String;

    goto :goto_176

    .line 47
    :cond_143
    :goto_143
    iget v1, p0, Lcom/google/android/gms/ads/internal/client/zzq;->s:I

    iget v2, p0, Lcom/google/android/gms/ads/internal/client/zzq;->p:I

    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_15c
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzq;->o:Ljava/lang/String;

    goto :goto_176

    .line 49
    :cond_15f
    :goto_15f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzq;->o:Ljava/lang/String;

    .line 51
    :goto_176
    array-length v1, p2

    if-le v1, v6, :cond_18f

    new-array v1, v1, [Lcom/google/android/gms/ads/internal/client/zzq;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzq;->u:[Lcom/google/android/gms/ads/internal/client/zzq;

    const/4 v1, 0x0

    .line 52
    :goto_17e
    array-length v2, p2

    if-ge v1, v2, :cond_192

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzq;->u:[Lcom/google/android/gms/ads/internal/client/zzq;

    new-instance v3, Lcom/google/android/gms/ads/internal/client/zzq;

    .line 53
    aget-object v4, p2, v1

    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/ads/internal/client/zzq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_17e

    :cond_18f
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzq;->u:[Lcom/google/android/gms/ads/internal/client/zzq;

    :cond_192
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzq;->v:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzq;->x:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/ads/internal/client/zzq;ZZZZZZZZ)V
    .registers 16
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p4    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p7    # [Lcom/google/android/gms/ads/internal/client/zzq;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p8    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p9    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p10    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p11    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p12    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p13    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p14    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p15    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzq;->o:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/ads/internal/client/zzq;->p:I

    iput p3, p0, Lcom/google/android/gms/ads/internal/client/zzq;->q:I

    iput-boolean p4, p0, Lcom/google/android/gms/ads/internal/client/zzq;->r:Z

    iput p5, p0, Lcom/google/android/gms/ads/internal/client/zzq;->s:I

    iput p6, p0, Lcom/google/android/gms/ads/internal/client/zzq;->t:I

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/client/zzq;->u:[Lcom/google/android/gms/ads/internal/client/zzq;

    iput-boolean p8, p0, Lcom/google/android/gms/ads/internal/client/zzq;->v:Z

    iput-boolean p9, p0, Lcom/google/android/gms/ads/internal/client/zzq;->w:Z

    iput-boolean p10, p0, Lcom/google/android/gms/ads/internal/client/zzq;->x:Z

    iput-boolean p11, p0, Lcom/google/android/gms/ads/internal/client/zzq;->y:Z

    iput-boolean p12, p0, Lcom/google/android/gms/ads/internal/client/zzq;->z:Z

    iput-boolean p13, p0, Lcom/google/android/gms/ads/internal/client/zzq;->A:Z

    iput-boolean p14, p0, Lcom/google/android/gms/ads/internal/client/zzq;->B:Z

    iput-boolean p15, p0, Lcom/google/android/gms/ads/internal/client/zzq;->C:Z

    return-void
.end method

.method public static V3(Landroid/util/DisplayMetrics;)I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/client/zzq;->a4(Landroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static W3()Lcom/google/android/gms/ads/internal/client/zzq;
    .registers 17

    .line 1
    new-instance v16, Lcom/google/android/gms/ads/internal/client/zzq;

    const-string v1, "interstitial_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/ads/internal/client/zzq;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/ads/internal/client/zzq;ZZZZZZZZ)V

    return-object v16
.end method

.method public static X3()Lcom/google/android/gms/ads/internal/client/zzq;
    .registers 17

    .line 1
    new-instance v16, Lcom/google/android/gms/ads/internal/client/zzq;

    const-string v1, "320x50_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/ads/internal/client/zzq;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/ads/internal/client/zzq;ZZZZZZZZ)V

    return-object v16
.end method

.method public static Y3()Lcom/google/android/gms/ads/internal/client/zzq;
    .registers 17

    .line 1
    new-instance v16, Lcom/google/android/gms/ads/internal/client/zzq;

    const-string v1, "reward_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/ads/internal/client/zzq;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/ads/internal/client/zzq;ZZZZZZZZ)V

    return-object v16
.end method

.method public static Z3()Lcom/google/android/gms/ads/internal/client/zzq;
    .registers 17

    .line 1
    new-instance v16, Lcom/google/android/gms/ads/internal/client/zzq;

    const-string v1, "invalid"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/ads/internal/client/zzq;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/ads/internal/client/zzq;ZZZZZZZZ)V

    return-object v16
.end method

.method private static a4(Landroid/util/DisplayMetrics;)I
    .registers 2

    .line 1
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    const/16 v0, 0x190

    if-gt p0, v0, :cond_e

    const/16 p0, 0x20

    return p0

    :cond_e
    const/16 v0, 0x2d0

    if-gt p0, v0, :cond_15

    const/16 p0, 0x32

    return p0

    :cond_15
    const/16 p0, 0x5a

    return p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzq;->o:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->t(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v1, p0, Lcom/google/android/gms/ads/internal/client/zzq;->p:I

    const/4 v2, 0x3

    .line 3
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->l(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/ads/internal/client/zzq;->q:I

    const/4 v2, 0x4

    .line 4
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->l(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/client/zzq;->r:Z

    const/4 v2, 0x5

    .line 5
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;IZ)V

    iget v1, p0, Lcom/google/android/gms/ads/internal/client/zzq;->s:I

    const/4 v2, 0x6

    .line 6
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->l(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/ads/internal/client/zzq;->t:I

    const/4 v2, 0x7

    .line 7
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->l(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzq;->u:[Lcom/google/android/gms/ads/internal/client/zzq;

    const/16 v2, 0x8

    .line 8
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->w(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/ads/internal/client/zzq;->v:Z

    const/16 v1, 0x9

    .line 9
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/ads/internal/client/zzq;->w:Z

    const/16 v1, 0xa

    .line 10
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/ads/internal/client/zzq;->x:Z

    const/16 v1, 0xb

    .line 11
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/ads/internal/client/zzq;->y:Z

    const/16 v1, 0xc

    .line 12
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/ads/internal/client/zzq;->z:Z

    const/16 v1, 0xd

    .line 13
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/ads/internal/client/zzq;->A:Z

    const/16 v1, 0xe

    .line 14
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/ads/internal/client/zzq;->B:Z

    const/16 v1, 0xf

    .line 15
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/ads/internal/client/zzq;->C:Z

    const/16 v1, 0x10

    .line 16
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;IZ)V

    .line 17
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    return-void
.end method
