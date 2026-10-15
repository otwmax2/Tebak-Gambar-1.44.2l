###### Class com.google.android.gms.internal.ads.zzct (com.google.android.gms.internal.ads.zzct)
.class public Lcom/google/android/gms/internal/ads/zzct;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:I

.field private f:I

.field private g:Z

.field private final h:Lcom/google/android/gms/internal/ads/zzfqk;

.field private final i:Lcom/google/android/gms/internal/ads/zzfqk;

.field private final j:I

.field private final k:I

.field private final l:Lcom/google/android/gms/internal/ads/zzfqk;

.field private m:Lcom/google/android/gms/internal/ads/zzfqk;

.field private n:I

.field private final o:Ljava/util/HashMap;

.field private final p:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->c:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->d:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->e:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->f:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzct;->g:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->u()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzct;->h:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->u()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzct;->i:Lcom/google/android/gms/internal/ads/zzfqk;

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->j:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->k:I

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->u()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzct;->l:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->u()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzct;->m:Lcom/google/android/gms/internal/ads/zzfqk;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->n:I

    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzct;->o:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzct;->p:Ljava/util/HashSet;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzcu;)V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->c:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->d:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzcu;->i:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzct;->e:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzcu;->j:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzct;->f:I

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzcu;->k:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzct;->g:Z

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzcu;->l:Lcom/google/android/gms/internal/ads/zzfqk;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzct;->h:Lcom/google/android/gms/internal/ads/zzfqk;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzcu;->n:Lcom/google/android/gms/internal/ads/zzfqk;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzct;->i:Lcom/google/android/gms/internal/ads/zzfqk;

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->j:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->k:I

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcu;->r:Lcom/google/android/gms/internal/ads/zzfqk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzct;->l:Lcom/google/android/gms/internal/ads/zzfqk;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcu;->s:Lcom/google/android/gms/internal/ads/zzfqk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzct;->m:Lcom/google/android/gms/internal/ads/zzfqk;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzcu;->t:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->n:I

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzcu;->z:Lcom/google/android/gms/internal/ads/zzfqp;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzct;->p:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcu;->y:Lcom/google/android/gms/internal/ads/zzfqn;

    .line 8
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzct;->o:Ljava/util/HashMap;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzct;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzct;->n:I

    return p0
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzct;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzct;->f:I

    return p0
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzct;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzct;->e:I

    return p0
.end method

.method static bridge synthetic f(Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/zzfqk;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzct;->i:Lcom/google/android/gms/internal/ads/zzfqk;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/zzfqk;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzct;->l:Lcom/google/android/gms/internal/ads/zzfqk;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/zzfqk;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzct;->m:Lcom/google/android/gms/internal/ads/zzfqk;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/zzfqk;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzct;->h:Lcom/google/android/gms/internal/ads/zzfqk;

    return-object p0
.end method

.method static bridge synthetic j(Lcom/google/android/gms/internal/ads/zzct;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzct;->o:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/google/android/gms/internal/ads/zzct;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzct;->p:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/google/android/gms/internal/ads/zzct;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzct;->g:Z

    return p0
.end method


# virtual methods
.method public final d(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzct;
    .registers 4

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_c

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_31

    :cond_c
    const-string v0, "captioning"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    if-eqz p1, :cond_31

    .line 4
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_31

    :cond_1d
    const/16 v0, 0x440

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->n:I

    .line 5
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzew;->n(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfqk;->v(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzct;->m:Lcom/google/android/gms/internal/ads/zzfqk;

    :cond_31
    :goto_31
    return-object p0
.end method

.method public e(IIZ)Lcom/google/android/gms/internal/ads/zzct;
    .registers 4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzct;->e:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzct;->f:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzct;->g:Z

    return-object p0
.end method
