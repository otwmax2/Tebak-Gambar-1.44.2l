###### Class com.google.android.gms.internal.ads.zzaue (com.google.android.gms.internal.ads.zzaue)
.class public final Lcom/google/android/gms/internal/ads/zzaue;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final A:Ljava/lang/String;

.field private final B:Z

.field private final C:Z

.field private final D:Z

.field private o:Z

.field private p:Z

.field private final q:Ljava/lang/Object;

.field private final r:Lcom/google/android/gms/internal/ads/zzatv;

.field private final s:I

.field private final t:I

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzatv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzatv;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaue;->o:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaue;->p:Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaue;->r:Lcom/google/android/gms/internal/ads/zzatv;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaue;->q:Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcc;->d:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaue;->t:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcc;->a:Lcom/google/android/gms/internal/ads/zzbbw;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaue;->u:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcc;->e:Lcom/google/android/gms/internal/ads/zzbbw;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaue;->v:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcc;->c:Lcom/google/android/gms/internal/ads/zzbbw;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaue;->w:I

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->Q:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaue;->x:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->R:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaue;->y:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->S:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaue;->z:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcc;->f:Lcom/google/android/gms/internal/ads/zzbbw;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaue;->s:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->U:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaue;->A:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->V:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaue;->B:Z

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->W:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaue;->C:Z

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->X:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaue;->D:Z

    const-string v0, "ContentFetchTask"

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzatu;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaue;->r:Lcom/google/android/gms/internal/ads/zzatv;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaue;->D:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzatv;->a(Z)Lcom/google/android/gms/internal/ads/zzatu;

    move-result-object v0

    return-object v0
.end method

.method final b(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzatu;)Lcom/google/android/gms/internal/ads/zzaud;
    .registers 13
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaud;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzaud;-><init>(Lcom/google/android/gms/internal/ads/zzaue;II)V

    return-object p1

    :cond_9
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    .line 3
    instance-of v1, p1, Landroid/widget/TextView;

    const/4 v9, 0x1

    if-eqz v1, :cond_4e

    instance-of v1, p1, Landroid/widget/EditText;

    if-nez v1, :cond_4e

    .line 4
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    .line 5
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v8, p1

    move-object v2, p2

    .line 9
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzatu;->k(Ljava/lang/String;ZFFFF)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaud;

    invoke-direct {p1, p0, v9, v0}, Lcom/google/android/gms/internal/ads/zzaud;-><init>(Lcom/google/android/gms/internal/ads/zzaue;II)V

    return-object p1

    :cond_48
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaud;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzaud;-><init>(Lcom/google/android/gms/internal/ads/zzaue;II)V

    return-object p1

    .line 10
    :cond_4e
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_75

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzcei;

    if-nez v1, :cond_75

    .line 11
    check-cast p1, Landroid/webkit/WebView;

    .line 12
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->e()Z

    move-result v1

    if-nez v1, :cond_64

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaud;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzaud;-><init>(Lcom/google/android/gms/internal/ads/zzaue;II)V

    return-object p1

    .line 13
    :cond_64
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzatu;->h()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzauc;

    .line 14
    invoke-direct {v1, p0, p2, p1, v4}, Lcom/google/android/gms/internal/ads/zzauc;-><init>(Lcom/google/android/gms/internal/ads/zzaue;Lcom/google/android/gms/internal/ads/zzatu;Landroid/webkit/WebView;Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaud;

    invoke-direct {p1, p0, v0, v9}, Lcom/google/android/gms/internal/ads/zzaud;-><init>(Lcom/google/android/gms/internal/ads/zzaue;II)V

    return-object p1

    .line 15
    :cond_75
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_9a

    .line 16
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 17
    :goto_7d
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_94

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/google/android/gms/internal/ads/zzaue;->b(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzatu;)Lcom/google/android/gms/internal/ads/zzaud;

    move-result-object v3

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzaud;->a:I

    add-int/2addr v1, v4

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzaud;->b:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    :cond_94
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaud;

    invoke-direct {p1, p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaud;-><init>(Lcom/google/android/gms/internal/ads/zzaue;II)V

    return-object p1

    :cond_9a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaud;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzaud;-><init>(Lcom/google/android/gms/internal/ads/zzaue;II)V

    return-object p1
.end method

.method final c(Landroid/view/View;)V
    .registers 12
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    :try_start_0
    new-instance v9, Lcom/google/android/gms/internal/ads/zzatu;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaue;->t:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaue;->u:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaue;->v:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaue;->w:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaue;->x:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaue;->y:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaue;->z:I

    iget-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzaue;->C:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzatu;-><init>(IIIIIIIZ)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->d()Lcom/google/android/gms/internal/ads/zzatz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatz;->b()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaue;->A:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->T:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_54

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaue;->A:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_54

    :cond_53
    return-void

    .line 9
    :cond_54
    :goto_54
    invoke-virtual {p0, p1, v9}, Lcom/google/android/gms/internal/ads/zzaue;->b(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzatu;)Lcom/google/android/gms/internal/ads/zzaud;

    move-result-object p1

    .line 10
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzatu;->m()V

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzaud;->a:I

    if-nez v0, :cond_65

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzaud;->b:I

    if-eqz v0, :cond_64

    goto :goto_65

    :cond_64
    return-void

    :cond_65
    :goto_65
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaud;->b:I

    if-nez p1, :cond_71

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzatu;->c()I

    move-result p1

    if-eqz p1, :cond_70

    goto :goto_73

    :cond_70
    return-void

    :cond_71
    if-nez p1, :cond_7d

    :goto_73
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaue;->r:Lcom/google/android/gms/internal/ads/zzatv;

    .line 11
    invoke-virtual {p1, v9}, Lcom/google/android/gms/internal/ads/zzatv;->d(Lcom/google/android/gms/internal/ads/zzatu;)Z

    move-result p1

    if-nez p1, :cond_7c

    goto :goto_7d

    :cond_7c
    return-void

    :cond_7d
    :goto_7d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaue;->r:Lcom/google/android/gms/internal/ads/zzatv;

    .line 12
    invoke-virtual {p1, v9}, Lcom/google/android/gms/internal/ads/zzatv;->b(Lcom/google/android/gms/internal/ads/zzatu;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_82} :catch_83

    return-void

    :catch_83
    move-exception p1

    const-string v0, "Exception in fetchContentOnUIThread"

    .line 13
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v0

    const-string v1, "ContentFetchTask.fetchContent"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method final d(Lcom/google/android/gms/internal/ads/zzatu;Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 15
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzatu;->g()V

    .line 2
    :try_start_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "text"

    .line 4
    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzaue;->B:Z

    if-nez p3, :cond_52

    .line 5
    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_52

    .line 6
    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {p2}, Landroid/webkit/WebView;->getX()F

    move-result v6

    .line 8
    invoke-virtual {p2}, Landroid/webkit/WebView;->getY()F

    move-result v7

    .line 9
    invoke-virtual {p2}, Landroid/webkit/WebView;->getWidth()I

    move-result p3

    int-to-float v8, p3

    .line 10
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHeight()I

    move-result p2

    int-to-float v9, p2

    move-object v3, p1

    move v5, p4

    .line 11
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzatu;->l(Ljava/lang/String;ZFFFF)V

    goto :goto_69

    .line 12
    :cond_52
    invoke-virtual {p2}, Landroid/webkit/WebView;->getX()F

    move-result v4

    .line 13
    invoke-virtual {p2}, Landroid/webkit/WebView;->getY()F

    move-result v5

    .line 14
    invoke-virtual {p2}, Landroid/webkit/WebView;->getWidth()I

    move-result p3

    int-to-float v6, p3

    .line 15
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHeight()I

    move-result p2

    int-to-float v7, p2

    move-object v1, p1

    move v3, p4

    .line 16
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzatu;->l(Ljava/lang/String;ZFFFF)V

    .line 17
    :cond_69
    :goto_69
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzatu;->o()Z

    move-result p2

    if-eqz p2, :cond_74

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaue;->r:Lcom/google/android/gms/internal/ads/zzatv;

    .line 18
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzatv;->c(Lcom/google/android/gms/internal/ads/zzatu;)Z
    :try_end_74
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_74} :catch_85
    .catchall {:try_start_3 .. :try_end_74} :catchall_75

    :cond_74
    return-void

    :catchall_75
    move-exception p1

    const-string p2, "Failed to get webview content."

    .line 19
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object p2

    const-string p3, "ContentFetchTask.processWebViewContent"

    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :catch_85
    const-string p1, "Json string may be malformed."

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaue;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaue;->o:Z

    if-eqz v1, :cond_e

    const-string v1, "Content hash thread already started, quitting..."

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    .line 3
    monitor-exit v0

    return-void

    :cond_e
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaue;->o:Z

    .line 4
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    .line 5
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_16
    move-exception v1

    .line 6
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public final f()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaue;->q:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaue;->p:Z

    new-instance v2, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentFetchThread: paused, pause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public final g()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaue;->q:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaue;->p:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaue;->q:Ljava/lang/Object;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const-string v1, "ContentFetchThread: wakeup"

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public final h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaue;->p:Z

    return v0
.end method

.method public final run()V
    .registers 7

    .line 1
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->d()Lcom/google/android/gms/internal/ads/zzatz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatz;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_c

    goto/16 :goto_b2

    :cond_c
    const-string v1, "activity"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const-string v2, "keyguard"

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    if-eqz v1, :cond_b2

    if-eqz v2, :cond_b2

    .line 4
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b2

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 6
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v5, :cond_2a

    .line 7
    iget v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v1, v3, :cond_b2

    .line 8
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_b2

    const-string v1, "power"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_b2

    .line 10
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0
    :try_end_58
    .catchall {:try_start_0 .. :try_end_58} :catchall_a8

    if-eqz v0, :cond_b2

    .line 11
    :try_start_5a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->d()Lcom/google/android/gms/internal/ads/zzatz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatz;->a()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_6d

    const-string v0, "ContentFetchThread: no activity. Sleeping."

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaue;->f()V
    :try_end_6c
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_6c} :catch_d3
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_6c} :catch_c3

    goto :goto_ba

    :cond_6d
    const/4 v1, 0x0

    .line 14
    :try_start_6e
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_9d

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_9d

    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_8d} :catch_8e

    goto :goto_9d

    :catch_8e
    move-exception v0

    .line 16
    :try_start_8f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v2

    const-string v3, "ContentFetchTask.extractContent"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Failed getting root view of activity. Content not extracted."

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    :cond_9d
    :goto_9d
    if-eqz v1, :cond_ba

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaua;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzaua;-><init>(Lcom/google/android/gms/internal/ads/zzaue;Landroid/view/View;)V

    .line 19
    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_ba

    :catchall_a8
    move-exception v0

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v1

    const-string v2, "ContentFetchTask.isInForeground"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_b2
    :goto_b2
    const-string v0, "ContentFetchTask: sleeping"

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaue;->f()V

    :cond_ba
    :goto_ba
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaue;->s:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c2
    .catch Ljava/lang/InterruptedException; {:try_start_8f .. :try_end_c2} :catch_d3
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_c2} :catch_c3

    goto :goto_d9

    :catch_c3
    move-exception v0

    const-string v1, "Error in ContentFetchTask"

    .line 24
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "ContentFetchTask.run"

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_d9

    :catch_d3
    move-exception v0

    const-string v1, "Error in ContentFetchTask"

    .line 26
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    :goto_d9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaue;->q:Ljava/lang/Object;

    .line 28
    monitor-enter v0

    :catch_dc
    :goto_dc
    :try_start_dc
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaue;->p:Z
    :try_end_de
    .catchall {:try_start_dc .. :try_end_de} :catchall_ee

    if-eqz v1, :cond_eb

    :try_start_e0
    const-string v1, "ContentFetchTask: waiting"

    .line 29
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaue;->q:Ljava/lang/Object;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_ea
    .catch Ljava/lang/InterruptedException; {:try_start_e0 .. :try_end_ea} :catch_dc
    .catchall {:try_start_e0 .. :try_end_ea} :catchall_ee

    goto :goto_dc

    .line 31
    :cond_eb
    :try_start_eb
    monitor-exit v0

    goto/16 :goto_0

    :catchall_ee
    move-exception v1

    monitor-exit v0
    :try_end_f0
    .catchall {:try_start_eb .. :try_end_f0} :catchall_ee

    goto :goto_f2

    :goto_f1
    throw v1

    :goto_f2
    goto :goto_f1
.end method
