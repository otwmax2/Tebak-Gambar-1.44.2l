###### Class k7.a (k7.a)
.class public final Lk7/a;
.super Ljava/lang/Object;
.source "AztecCode.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:Ll7/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ll7/b;
    .registers 2

    .line 1
    iget-object v0, p0, Lk7/a;->e:Ll7/b;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    .line 1
    iput p1, p0, Lk7/a;->d:I

    return-void
.end method

.method public c(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lk7/a;->a:Z

    return-void
.end method

.method public d(I)V
    .registers 2

    .line 1
    iput p1, p0, Lk7/a;->c:I

    return-void
.end method

.method public e(Ll7/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lk7/a;->e:Ll7/b;

    return-void
.end method

.method public f(I)V
    .registers 2

    .line 1
    iput p1, p0, Lk7/a;->b:I

    return-void
.end method
