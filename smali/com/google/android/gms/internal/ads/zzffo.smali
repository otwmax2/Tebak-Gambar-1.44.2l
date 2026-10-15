###### Class com.google.android.gms.internal.ads.zzffo (com.google.android.gms.internal.ads.zzffo)
.class public final Lcom/google/android/gms/internal/ads/zzffo;
.super Lcom/google/android/gms/internal/ads/zzffk;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final i:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzffm;

.field private final b:Lcom/google/android/gms/internal/ads/zzffl;

.field private final c:Ljava/util/List;

.field private d:Lcom/google/android/gms/internal/ads/zzfhi;

.field private e:Lcom/google/android/gms/internal/ads/zzfgl;

.field private f:Z

.field private g:Z

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^[a-zA-Z0-9 ]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzffo;->i:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzffl;Lcom/google/android/gms/internal/ads/zzffm;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzffk;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->f:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->g:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffo;->b:Lcom/google/android/gms/internal/ads/zzffl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzffo;->a:Lcom/google/android/gms/internal/ads/zzffm;

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->h:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzffo;->k(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzffm;->d()Lcom/google/android/gms/internal/ads/zzffn;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzffn;->p:Lcom/google/android/gms/internal/ads/zzffn;

    if-eq v1, v2, :cond_3e

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzffm;->d()Lcom/google/android/gms/internal/ads/zzffn;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzffn;->r:Lcom/google/android/gms/internal/ads/zzffn;

    if-ne v1, v2, :cond_32

    goto :goto_3e

    .line 5
    :cond_32
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfgo;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzffm;->i()Ljava/util/Map;

    move-result-object p2

    .line 7
    invoke-direct {v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfgo;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzffo;->e:Lcom/google/android/gms/internal/ads/zzfgl;

    goto :goto_49

    .line 8
    :cond_3e
    :goto_3e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgm;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzffm;->a()Landroid/webkit/WebView;

    move-result-object p2

    .line 9
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzfgm;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->e:Lcom/google/android/gms/internal/ads/zzfgl;

    :goto_49
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzffo;->e:Lcom/google/android/gms/internal/ads/zzfgl;

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfgl;->j()V

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffz;->a()Lcom/google/android/gms/internal/ads/zzffz;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzffz;->d(Lcom/google/android/gms/internal/ads/zzffo;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzffo;->e:Lcom/google/android/gms/internal/ads/zzfgl;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfge;->a()Lcom/google/android/gms/internal/ads/zzfge;

    move-result-object v0

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfgl;->a()Landroid/webkit/WebView;

    move-result-object p2

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzffl;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzfge;->d(Landroid/webkit/WebView;Lorg/json/JSONObject;)V

    return-void
.end method

.method private final k(Landroid/view/View;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfhi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfhi;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->d:Lcom/google/android/gms/internal/ads/zzfhi;

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzffq;Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzffo;->g:Z

    if-nez p3, :cond_45

    sget-object p3, Lcom/google/android/gms/internal/ads/zzffo;->i:Ljava/util/regex/Pattern;

    const-string v0, "Ad overlay"

    invoke-virtual {p3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->matches()Z

    move-result p3

    if-eqz p3, :cond_3d

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzffo;->c:Ljava/util/List;

    .line 2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_18
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfgb;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgb;->b()Lcom/google/android/gms/internal/ads/zzfhi;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_18

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    if-nez v1, :cond_3c

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzffo;->c:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfgb;

    .line 4
    invoke-direct {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfgb;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzffq;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3c
    return-void

    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FriendlyObstruction has detailed reason that contains characters not in [a-z][A-Z][0-9] or space"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_45
    return-void
.end method

.method public final c()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->g:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->d:Lcom/google/android/gms/internal/ads/zzfhi;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->g:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->c:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->g:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->e:Lcom/google/android/gms/internal/ads/zzfgl;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfge;->a()Lcom/google/android/gms/internal/ads/zzfge;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgl;->a()Landroid/webkit/WebView;

    move-result-object v0

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfge;->c(Landroid/webkit/WebView;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffz;->a()Lcom/google/android/gms/internal/ads/zzffz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzffz;->e(Lcom/google/android/gms/internal/ads/zzffo;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->e:Lcom/google/android/gms/internal/ads/zzfgl;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgl;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->e:Lcom/google/android/gms/internal/ads/zzfgl;

    return-void
.end method

.method public final d(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->g:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzffo;->f()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_c

    return-void

    .line 2
    :cond_c
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzffo;->k(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->e:Lcom/google/android/gms/internal/ads/zzfgl;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgl;->b()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffz;->a()Lcom/google/android/gms/internal/ads/zzffz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffz;->c()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_42

    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzffo;

    if-eq v1, p0, :cond_28

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzffo;->f()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_28

    .line 8
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzffo;->d:Lcom/google/android/gms/internal/ads/zzfhi;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_28

    :cond_42
    return-void
.end method

.method public final e()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->f:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->f:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffz;->a()Lcom/google/android/gms/internal/ads/zzffz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzffz;->f(Lcom/google/android/gms/internal/ads/zzffo;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgf;->b()Lcom/google/android/gms/internal/ads/zzfgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgf;->a()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffo;->e:Lcom/google/android/gms/internal/ads/zzfgl;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfgl;->h(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->e:Lcom/google/android/gms/internal/ads/zzfgl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffo;->a:Lcom/google/android/gms/internal/ads/zzffm;

    .line 4
    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfgl;->f(Lcom/google/android/gms/internal/ads/zzffo;Lcom/google/android/gms/internal/ads/zzffm;)V

    return-void
.end method

.method public final f()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->d:Lcom/google/android/gms/internal/ads/zzfhi;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/internal/ads/zzfgl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->e:Lcom/google/android/gms/internal/ads/zzfgl;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->c:Ljava/util/List;

    return-object v0
.end method

.method public final j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->f:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->g:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method
