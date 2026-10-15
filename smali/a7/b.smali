###### Class a7.b (a7.b)
.class public La7/b;
.super Ljava/lang/Object;
.source "ComponentMonitor.java"

# interfaces
.implements Lk5/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lk5/c;Lk5/e;)Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1, p2}, La7/b;->c(Ljava/lang/String;Lk5/c;Lk5/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic c(Ljava/lang/String;Lk5/c;Lk5/e;)Ljava/lang/Object;
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p0}, La7/c;->b(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lk5/c;->h()Lk5/h;

    move-result-object p0

    invoke-interface {p0, p2}, Lk5/h;->a(Lk5/e;)Ljava/lang/Object;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_f

    .line 3
    invoke-static {}, La7/c;->a()V

    return-object p0

    :catchall_f
    move-exception p0

    invoke-static {}, La7/c;->a()V

    .line 4
    throw p0
.end method


# virtual methods
.method public a(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ")",
            "Ljava/util/List<",
            "Lk5/c<",
            "*>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/google/firebase/components/ComponentRegistrar;->getComponents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk5/c;

    .line 3
    invoke-virtual {v1}, Lk5/c;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 4
    new-instance v3, La7/a;

    invoke-direct {v3, v2, v1}, La7/a;-><init>(Ljava/lang/String;Lk5/c;)V

    .line 5
    invoke-virtual {v1, v3}, Lk5/c;->t(Lk5/h;)Lk5/c;

    move-result-object v1

    .line 6
    :cond_28
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_2c
    return-object v0
.end method

###### Class a7.a (a7.a)
.class public final synthetic La7/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk5/h;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lk5/c;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lk5/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La7/a;->a:Ljava/lang/String;

    iput-object p2, p0, La7/a;->b:Lk5/c;

    return-void
.end method


# virtual methods
.method public final a(Lk5/e;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, La7/a;->a:Ljava/lang/String;

    iget-object v1, p0, La7/a;->b:Lk5/c;

    invoke-static {v0, v1, p1}, La7/b;->b(Ljava/lang/String;Lk5/c;Lk5/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
