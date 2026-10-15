###### Class da.n1 (da.n1)
.class public abstract Lda/n1;
.super Lda/i0;
.source "Executors.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lda/n1$a;
    }
.end annotation


# static fields
.field public static final q:Lda/n1$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lda/n1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lda/n1$a;-><init>(Lt9/g;)V

    sput-object v0, Lda/n1;->q:Lda/n1$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lda/i0;-><init>()V

    return-void
.end method

###### Class da.n1.a (da.n1$a)
.class public final Lda/n1$a;
.super Lk9/b;
.source "Executors.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lda/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk9/b<",
        "Lda/i0;",
        "Lda/n1;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    sget-object v0, Lda/i0;->p:Lda/i0$a;

    .line 2
    sget-object v1, Lda/n1$a$a;->o:Lda/n1$a$a;

    .line 3
    invoke-direct {p0, v0, v1}, Lk9/b;-><init>(Lk9/g$c;Ls9/l;)V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lda/n1$a;-><init>()V

    return-void
.end method

###### Class da.n1.a.C0148a (da.n1$a$a)
.class final Lda/n1$a$a;
.super Lt9/n;
.source "Executors.kt"

# interfaces
.implements Ls9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lda/n1$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/l<",
        "Lk9/g$b;",
        "Lda/n1;",
        ">;"
    }
.end annotation


# static fields
.field public static final o:Lda/n1$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lda/n1$a$a;

    invoke-direct {v0}, Lda/n1$a$a;-><init>()V

    sput-object v0, Lda/n1$a$a;->o:Lda/n1$a$a;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lk9/g$b;)Lda/n1;
    .registers 3

    .line 1
    instance-of v0, p1, Lda/n1;

    if-eqz v0, :cond_7

    check-cast p1, Lda/n1;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lk9/g$b;

    invoke-virtual {p0, p1}, Lda/n1$a$a;->c(Lk9/g$b;)Lda/n1;

    move-result-object p1

    return-object p1
.end method
