###### Class k0.c (k0.c)
.class public final Lk0/c;
.super Ljava/lang/Object;
.source "PreferenceDataStoreFactory.kt"


# static fields
.field public static final a:Lk0/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lk0/c;

    invoke-direct {v0}, Lk0/c;-><init>()V

    sput-object v0, Lk0/c;->a:Lk0/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li0/b;Ljava/util/List;Lda/o0;Ls9/a;)Lh0/f;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li0/b<",
            "Lk0/d;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lh0/d<",
            "Lk0/d;",
            ">;>;",
            "Lda/o0;",
            "Ls9/a<",
            "+",
            "Ljava/io/File;",
            ">;)",
            "Lh0/f<",
            "Lk0/d;",
            ">;"
        }
    .end annotation

    const-string v0, "migrations"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "produceFile"

    invoke-static {p4, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lh0/g;->a:Lh0/g;

    .line 2
    sget-object v2, Lk0/h;->a:Lk0/h;

    .line 3
    new-instance v6, Lk0/c$a;

    invoke-direct {v6, p4}, Lk0/c$a;-><init>(Ls9/a;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 4
    invoke-virtual/range {v1 .. v6}, Lh0/g;->a(Lh0/k;Li0/b;Ljava/util/List;Lda/o0;Ls9/a;)Lh0/f;

    move-result-object p1

    .line 5
    new-instance p2, Lk0/b;

    invoke-direct {p2, p1}, Lk0/b;-><init>(Lh0/f;)V

    return-object p2
.end method

###### Class k0.c.a (k0.c$a)
.class final Lk0/c$a;
.super Lt9/n;
.source "PreferenceDataStoreFactory.kt"

# interfaces
.implements Ls9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/c;->a(Li0/b;Ljava/util/List;Lda/o0;Ls9/a;)Lh0/f;
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
.field final synthetic o:Ls9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/a<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ls9/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls9/a<",
            "+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lk0/c$a;->o:Ls9/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/io/File;
    .registers 5

    .line 1
    iget-object v0, p0, Lk0/c$a;->o:Ls9/a;

    invoke-interface {v0}, Ls9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 2
    invoke-static {v0}, Lq9/g;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lk0/h;->a:Lk0/h;

    invoke-virtual {v2}, Lk0/h;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    return-object v0

    .line 3
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File extension for file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not match required extension for Preferences file: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v2}, Lk0/h;->f()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lk0/c$a;->c()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
