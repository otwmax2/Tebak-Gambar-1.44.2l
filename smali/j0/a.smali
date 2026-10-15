###### Class j0.a (j0.a)
.class public final Lj0/a;
.super Ljava/lang/Object;
.source "PreferenceDataStoreDelegate.kt"


# direct methods
.method public static final a(Ljava/lang/String;Li0/b;Ls9/l;Lda/o0;)Lv9/a;
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
            ")",
            "Lv9/a<",
            "Landroid/content/Context;",
            "Lh0/f<",
            "Lk0/d;",
            ">;>;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "produceMigrations"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lj0/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lj0/c;-><init>(Ljava/lang/String;Li0/b;Ls9/l;Lda/o0;)V

    return-object v0
.end method

.method public static synthetic b(Ljava/lang/String;Li0/b;Ls9/l;Lda/o0;ILjava/lang/Object;)Lv9/a;
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_c

    .line 1
    sget-object p2, Lj0/a$a;->o:Lj0/a$a;

    :cond_c
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_23

    .line 2
    sget-object p3, Lda/d1;->a:Lda/d1;

    invoke-static {}, Lda/d1;->b()Lda/i0;

    move-result-object p3

    const/4 p4, 0x1

    invoke-static {v0, p4, v0}, Lda/q2;->b(Lda/x1;ILjava/lang/Object;)Lda/y;

    move-result-object p4

    invoke-virtual {p3, p4}, Lk9/a;->d(Lk9/g;)Lk9/g;

    move-result-object p3

    invoke-static {p3}, Lda/p0;->a(Lk9/g;)Lda/o0;

    move-result-object p3

    .line 3
    :cond_23
    invoke-static {p0, p1, p2, p3}, Lj0/a;->a(Ljava/lang/String;Li0/b;Ls9/l;Lda/o0;)Lv9/a;

    move-result-object p0

    return-object p0
.end method

###### Class j0.a.C0180a (j0.a$a)
.class final Lj0/a$a;
.super Lt9/n;
.source "PreferenceDataStoreDelegate.kt"

# interfaces
.implements Ls9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/a;->b(Ljava/lang/String;Li0/b;Ls9/l;Lda/o0;ILjava/lang/Object;)Lv9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/l<",
        "Landroid/content/Context;",
        "Ljava/util/List<",
        "+",
        "Lh0/d<",
        "Lk0/d;",
        ">;>;>;"
    }
.end annotation


# static fields
.field public static final o:Lj0/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lj0/a$a;

    invoke-direct {v0}, Lj0/a$a;-><init>()V

    sput-object v0, Lj0/a$a;->o:Lj0/a$a;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lh0/d<",
            "Lk0/d;",
            ">;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Li9/j;->e()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lj0/a$a;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
