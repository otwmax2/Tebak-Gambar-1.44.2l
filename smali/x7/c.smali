###### Class x7.c (x7.c)
.class public final Lx7/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lx7/i;

.field private final b:Landroid/webkit/WebView;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx7/j;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lx7/j;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Lx7/d;


# direct methods
.method private constructor <init>(Lx7/i;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lx7/d;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx7/i;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lx7/j;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lx7/d;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lx7/c;->c:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lx7/c;->d:Ljava/util/Map;

    iput-object p1, p0, Lx7/c;->a:Lx7/i;

    iput-object p2, p0, Lx7/c;->b:Landroid/webkit/WebView;

    iput-object p3, p0, Lx7/c;->e:Ljava/lang/String;

    iput-object p7, p0, Lx7/c;->h:Lx7/d;

    if-eqz p4, :cond_3c

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lx7/j;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lx7/c;->d:Ljava/util/Map;

    invoke-interface {p4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_3c
    iput-object p5, p0, Lx7/c;->g:Ljava/lang/String;

    iput-object p6, p0, Lx7/c;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Lx7/i;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lx7/c;
    .registers 14

    const-string v0, "Partner is null"

    invoke-static {p0, v0}, La8/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "WebView is null"

    invoke-static {p1, v0}, La8/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_13

    const/16 v0, 0x100

    const-string v1, "CustomReferenceData is greater than 256 characters"

    invoke-static {p3, v0, v1}, La8/e;->c(Ljava/lang/String;ILjava/lang/String;)V

    :cond_13
    new-instance v0, Lx7/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v9, Lx7/d;->p:Lx7/d;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v9}, Lx7/c;-><init>(Lx7/i;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lx7/d;)V

    return-object v0
.end method


# virtual methods
.method public b()Lx7/d;
    .registers 2

    iget-object v0, p0, Lx7/c;->h:Lx7/d;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lx7/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lx7/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lx7/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx7/c;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lx7/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lx7/i;
    .registers 2

    iget-object v0, p0, Lx7/c;->a:Lx7/i;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx7/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx7/c;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public i()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lx7/c;->b:Landroid/webkit/WebView;

    return-object v0
.end method
