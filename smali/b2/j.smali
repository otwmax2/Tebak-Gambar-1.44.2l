###### Class b2.j (b2.j)
.class public Lb2/j;
.super Ljava/lang/Exception;
.source "ErrorWrappingGlideException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Error;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const-string v0, "The causing error must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Error;
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    return-object v0
.end method

.method public bridge synthetic getCause()Ljava/lang/Throwable;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lb2/j;->a()Ljava/lang/Error;

    move-result-object v0

    return-object v0
.end method
