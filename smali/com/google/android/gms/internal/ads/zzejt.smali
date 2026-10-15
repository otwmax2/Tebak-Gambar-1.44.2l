###### Class com.google.android.gms.internal.ads.zzejt (com.google.android.gms.internal.ads.zzejt)
.class public final Lcom/google/android/gms/internal/ads/zzejt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzepn;

.field private final b:Lcom/google/android/gms/internal/ads/zzeyx;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/zzbyj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzelk;Lcom/google/android/gms/internal/ads/zzeyx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbyj;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejt;->a:Lcom/google/android/gms/internal/ads/zzepn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzejt;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzejt;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzejt;->d:Lcom/google/android/gms/internal/ads/zzbyj;

    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/ads/zzeps;)Lcom/google/android/gms/internal/ads/zzeju;
    .registers 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzejt;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzeyx;->e:Lcom/google/android/gms/ads/internal/client/zzq;

    iget-object v1, v3, Lcom/google/android/gms/ads/internal/client/zzq;->u:[Lcom/google/android/gms/ads/internal/client/zzq;

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 2
    iget-object v1, v3, Lcom/google/android/gms/ads/internal/client/zzq;->o:Ljava/lang/String;

    .line 3
    iget-boolean v6, v3, Lcom/google/android/gms/ads/internal/client/zzq;->w:Z

    move-object v9, v1

    move v10, v6

    goto :goto_34

    :cond_12
    move-object v9, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 4
    :goto_17
    array-length v11, v1

    if-ge v6, v11, :cond_34

    .line 5
    aget-object v11, v1, v6

    .line 6
    iget-boolean v12, v11, Lcom/google/android/gms/ads/internal/client/zzq;->w:Z

    if-nez v12, :cond_25

    if-nez v7, :cond_25

    .line 7
    iget-object v9, v11, Lcom/google/android/gms/ads/internal/client/zzq;->o:Ljava/lang/String;

    const/4 v7, 0x1

    :cond_25
    if-eqz v12, :cond_2d

    if-nez v8, :cond_2c

    const/4 v8, 0x1

    const/4 v10, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v8, 0x1

    :cond_2d
    :goto_2d
    if-eqz v7, :cond_31

    if-nez v8, :cond_34

    :cond_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 8
    :cond_34
    :goto_34
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzejt;->c:Landroid/content/Context;

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v6, 0x0

    if-eqz v1, :cond_57

    .line 10
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 11
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    .line 12
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 13
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzejt;->d:Lcom/google/android/gms/internal/ads/zzbyj;

    .line 14
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbyj;->h()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/ads/internal/util/zzg;->l()Ljava/lang/String;

    move-result-object v8

    move-object v11, v8

    move v8, v7

    move v7, v2

    goto :goto_5b

    :cond_57
    move-object v11, v2

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_5b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    iget-object v12, v3, Lcom/google/android/gms/ads/internal/client/zzq;->u:[Lcom/google/android/gms/ads/internal/client/zzq;

    if-eqz v12, :cond_bd

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_66
    array-length v15, v12

    const-string v4, "|"

    if-ge v13, v15, :cond_aa

    .line 17
    aget-object v15, v12, v13

    .line 18
    iget-boolean v5, v15, Lcom/google/android/gms/ads/internal/client/zzq;->w:Z

    if-eqz v5, :cond_73

    const/4 v14, 0x1

    goto :goto_a7

    .line 19
    :cond_73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_7c

    .line 20
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_7c
    iget v4, v15, Lcom/google/android/gms/ads/internal/client/zzq;->s:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8c

    cmpl-float v4, v7, v6

    if-eqz v4, :cond_8b

    .line 22
    iget v4, v15, Lcom/google/android/gms/ads/internal/client/zzq;->t:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    float-to-int v4, v4

    goto :goto_8c

    :cond_8b
    const/4 v4, -0x1

    .line 23
    :cond_8c
    :goto_8c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    .line 24
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget v4, v15, Lcom/google/android/gms/ads/internal/client/zzq;->p:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_a4

    cmpl-float v4, v7, v6

    if-eqz v4, :cond_a3

    .line 26
    iget v4, v15, Lcom/google/android/gms/ads/internal/client/zzq;->q:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    float-to-int v4, v4

    goto :goto_a4

    :cond_a3
    const/4 v4, -0x2

    .line 27
    :cond_a4
    :goto_a4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_a7
    add-int/lit8 v13, v13, 0x1

    goto :goto_66

    :cond_aa
    if-eqz v14, :cond_bd

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_b7

    const/4 v5, 0x0

    .line 29
    invoke-virtual {v2, v5, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b8

    :cond_b7
    const/4 v5, 0x0

    :goto_b8
    const-string v4, "320x50"

    .line 30
    invoke-virtual {v2, v5, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_bd
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v12, Lcom/google/android/gms/internal/ads/zzeju;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzejt;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-boolean v13, v2, Lcom/google/android/gms/internal/ads/zzeyx;->p:Z

    move-object v2, v12

    move-object v4, v9

    move v5, v10

    move v9, v1

    move-object v10, v11

    move v11, v13

    .line 31
    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/zzeju;-><init>(Lcom/google/android/gms/ads/internal/client/zzq;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;Z)V

    return-object v12
.end method

.method public final zza()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejt;->a:Lcom/google/android/gms/internal/ads/zzepn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzepn;->zzb()Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzejs;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzejs;-><init>(Lcom/google/android/gms/internal/ads/zzejt;)V

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzn;->f:Lcom/google/android/gms/internal/ads/zzfuu;

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfuj;->l(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzfnj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzejs (com.google.android.gms.internal.ads.zzejs)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzejs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnj;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzejt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzejt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejs;->a:Lcom/google/android/gms/internal/ads/zzejt;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejs;->a:Lcom/google/android/gms/internal/ads/zzejt;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeps;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzejt;->a(Lcom/google/android/gms/internal/ads/zzeps;)Lcom/google/android/gms/internal/ads/zzeju;

    move-result-object p1

    return-object p1
.end method
