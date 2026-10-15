###### Class c8.c (c8.c)
.class public Lc8/c;
.super Lc8/a;


# instance fields
.field private d:Landroid/webkit/WebView;

.field private e:Ljava/lang/Long;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lx7/j;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lx7/j;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lc8/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc8/c;->e:Ljava/lang/Long;

    iput-object p1, p0, Lc8/c;->f:Ljava/util/Map;

    iput-object p2, p0, Lc8/c;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic o(Lc8/c;)Landroid/webkit/WebView;
    .registers 1

    iget-object p0, p0, Lc8/c;->d:Landroid/webkit/WebView;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-super {p0}, Lc8/a;->a()V

    invoke-virtual {p0}, Lc8/c;->p()V

    return-void
.end method

.method public f(Lx7/k;Lx7/c;)V
    .registers 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lx7/c;->e()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx7/j;

    invoke-static {v0, v3, v4}, La8/b;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_11

    :cond_27
    invoke-virtual {p0, p1, p2, v0}, Lc8/a;->g(Lx7/k;Lx7/c;Lorg/json/JSONObject;)V

    return-void
.end method

.method public i()V
    .registers 8

    invoke-super {p0}, Lc8/a;->i()V

    iget-object v0, p0, Lc8/c;->e:Ljava/lang/Long;

    const-wide/16 v1, 0xfa0

    if-nez v0, :cond_b

    move-wide v3, v1

    goto :goto_1e

    :cond_b
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, La8/d;->a()J

    move-result-wide v3

    iget-object v5, p0, Lc8/c;->e:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    :goto_1e
    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lc8/c$a;

    invoke-direct {v3, p0}, Lc8/c$a;-><init>(Lc8/c;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lc8/c;->d:Landroid/webkit/WebView;

    return-void
.end method

.method p()V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Ly7/d;->a()Ly7/d;

    move-result-object v1

    invoke-virtual {v1}, Ly7/d;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/c;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lc8/c;->d:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lc8/a;->c(Landroid/webkit/WebView;)V

    invoke-static {}, Ly7/e;->a()Ly7/e;

    move-result-object v0

    iget-object v1, p0, Lc8/c;->d:Landroid/webkit/WebView;

    iget-object v2, p0, Lc8/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ly7/e;->j(Landroid/webkit/WebView;Ljava/lang/String;)Z

    iget-object v0, p0, Lc8/c;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lc8/c;->f:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx7/j;

    invoke-virtual {v2}, Lx7/j;->a()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ly7/e;->a()Ly7/e;

    move-result-object v3

    iget-object v4, p0, Lc8/c;->d:Landroid/webkit/WebView;

    invoke-virtual {v3, v4, v2, v1}, Ly7/e;->d(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    :cond_57
    invoke-static {}, La8/d;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lc8/c;->e:Ljava/lang/Long;

    return-void
.end method

###### Class c8.c.a (c8.c$a)
.class Lc8/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/c;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final o:Landroid/webkit/WebView;

.field final synthetic p:Lc8/c;


# direct methods
.method constructor <init>(Lc8/c;)V
    .registers 2

    iput-object p1, p0, Lc8/c$a;->p:Lc8/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc8/c;->o(Lc8/c;)Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lc8/c$a;->o:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lc8/c$a;->o:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method
