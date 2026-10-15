###### Class y5.a (y5.a)
.class public Ly5/a;
.super Ljava/lang/Object;
.source "MiddleOutFallbackStrategy.java"

# interfaces
.implements Ly5/d;


# instance fields
.field private final a:I

.field private final b:[Ly5/d;

.field private final c:Ly5/b;


# direct methods
.method public varargs constructor <init>(I[Ly5/d;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ly5/a;->a:I

    .line 3
    iput-object p2, p0, Ly5/a;->b:[Ly5/d;

    .line 4
    new-instance p2, Ly5/b;

    invoke-direct {p2, p1}, Ly5/b;-><init>(I)V

    iput-object p2, p0, Ly5/a;->c:Ly5/b;

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .registers 9

    .line 1
    array-length v0, p1

    iget v1, p0, Ly5/a;->a:I

    if-gt v0, v1, :cond_6

    return-object p1

    .line 2
    :cond_6
    iget-object v0, p0, Ly5/a;->b:[Ly5/d;

    array-length v1, v0

    const/4 v2, 0x0

    move-object v3, p1

    :goto_b
    if-ge v2, v1, :cond_1c

    aget-object v4, v0, v2

    .line 3
    array-length v5, v3

    iget v6, p0, Ly5/a;->a:I

    if-gt v5, v6, :cond_15

    goto :goto_1c

    .line 4
    :cond_15
    invoke-interface {v4, p1}, Ly5/d;->a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 5
    :cond_1c
    :goto_1c
    array-length p1, v3

    iget v0, p0, Ly5/a;->a:I

    if-le p1, v0, :cond_27

    .line 6
    iget-object p1, p0, Ly5/a;->c:Ly5/b;

    invoke-virtual {p1, v3}, Ly5/b;->a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v3

    :cond_27
    return-object v3
.end method
