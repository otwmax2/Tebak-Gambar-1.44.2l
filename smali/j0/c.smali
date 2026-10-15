###### Class j0.c (j0.c)
.class public final Lj0/c;
.super Ljava/lang/Object;
.source "PreferenceDataStoreDelegate.kt"

# interfaces
.implements Lv9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv9/a<",
        "Landroid/content/Context;",
        "Lh0/f<",
        "Lk0/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Li0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li0/b<",
            "Lk0/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ls9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/l<",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lh0/d<",
            "Lk0/d;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final d:Lda/o0;

.field private final e:Ljava/lang/Object;

.field private volatile f:Lh0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/f<",
            "Lk0/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Li0/b;Ls9/l;Lda/o0;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Li0/b<",
            "Lk0/d;",
            ">;",
            "Ls9/l<",
            "-",
            "Landroid/content/Context;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lh0/d<",
            "Lk0/d;",
            ">;>;>;",
            "Lda/o0;",
            ")V"
        }
    .end annotation

    const-string p2, "name"

    invoke-static {p1, p2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "produceMigrations"

    invoke-static {p3, p2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "scope"

    invoke-static {p4, p2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj0/c;->a:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lj0/c;->c:Ls9/l;

    .line 4
    iput-object p4, p0, Lj0/c;->d:Lda/o0;

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0/c;->e:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic b(Lj0/c;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lj0/c;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lz9/h;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lj0/c;->c(Landroid/content/Context;Lz9/h;)Lh0/f;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;Lz9/h;)Lh0/f;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lz9/h<",
            "*>;)",
            "Lh0/f<",
            "Lk0/d;",
            ">;"
        }
    .end annotation

    const-string v0, "thisRef"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lj0/c;->f:Lh0/f;

    if-nez p2, :cond_42

    iget-object p2, p0, Lj0/c;->e:Ljava/lang/Object;

    monitor-enter p2

    .line 2
    :try_start_11
    iget-object v0, p0, Lj0/c;->f:Lh0/f;

    if-nez v0, :cond_37

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    sget-object v0, Lk0/c;->a:Lk0/c;

    .line 5
    iget-object v1, p0, Lj0/c;->b:Li0/b;

    .line 6
    iget-object v2, p0, Lj0/c;->c:Ls9/l;

    const-string v3, "applicationContext"

    invoke-static {p1, v3}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, p1}, Ls9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 7
    iget-object v3, p0, Lj0/c;->d:Lda/o0;

    .line 8
    new-instance v4, Lj0/c$a;

    invoke-direct {v4, p1, p0}, Lj0/c$a;-><init>(Landroid/content/Context;Lj0/c;)V

    .line 9
    invoke-virtual {v0, v1, v2, v3, v4}, Lk0/c;->a(Li0/b;Ljava/util/List;Lda/o0;Ls9/a;)Lh0/f;

    move-result-object p1

    iput-object p1, p0, Lj0/c;->f:Lh0/f;

    .line 10
    :cond_37
    iget-object p1, p0, Lj0/c;->f:Lh0/f;

    invoke-static {p1}, Lt9/m;->b(Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_11 .. :try_end_3c} :catchall_3f

    .line 11
    monitor-exit p2

    move-object p2, p1

    goto :goto_42

    :catchall_3f
    move-exception p1

    monitor-exit p2

    throw p1

    :cond_42
    :goto_42
    return-object p2
.end method

###### Class j0.c.a (j0.c$a)
.class final Lj0/c$a;
.super Lt9/n;
.source "PreferenceDataStoreDelegate.kt"

# interfaces
.implements Ls9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/c;->c(Landroid/content/Context;Lz9/h;)Lh0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/a<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Landroid/content/Context;

.field final synthetic p:Lj0/c;


# direct methods
.method constructor <init>(Landroid/content/Context;Lj0/c;)V
    .registers 3

    iput-object p1, p0, Lj0/c$a;->o:Landroid/content/Context;

    iput-object p2, p0, Lj0/c$a;->p:Lj0/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/io/File;
    .registers 3

    .line 1
    iget-object v0, p0, Lj0/c$a;->o:Landroid/content/Context;

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lj0/c$a;->p:Lj0/c;

    invoke-static {v1}, Lj0/c;->b(Lj0/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lj0/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lj0/c$a;->c()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
