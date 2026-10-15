###### Class k7.g (k7.g)
.class abstract Lk7/g;
.super Ljava/lang/Object;
.source "Token.java"


# static fields
.field static final b:Lk7/g;


# instance fields
.field private final a:Lk7/g;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lk7/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lk7/e;-><init>(Lk7/g;II)V

    sput-object v0, Lk7/g;->b:Lk7/g;

    return-void
.end method

.method constructor <init>(Lk7/g;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk7/g;->a:Lk7/g;

    return-void
.end method


# virtual methods
.method final a(II)Lk7/g;
    .registers 4

    .line 1
    new-instance v0, Lk7/e;

    invoke-direct {v0, p0, p1, p2}, Lk7/e;-><init>(Lk7/g;II)V

    return-object v0
.end method

.method final b(II)Lk7/g;
    .registers 4

    .line 1
    new-instance v0, Lk7/b;

    invoke-direct {v0, p0, p1, p2}, Lk7/b;-><init>(Lk7/g;II)V

    return-object v0
.end method

.method abstract c(Ll7/a;[B)V
.end method

.method final d()Lk7/g;
    .registers 2

    .line 1
    iget-object v0, p0, Lk7/g;->a:Lk7/g;

    return-object v0
.end method
