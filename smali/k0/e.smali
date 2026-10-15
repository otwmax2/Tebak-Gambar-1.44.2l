###### Class k0.e (k0.e)
.class public final Lk0/e;
.super Ljava/lang/Object;
.source "PreferencesFactory.kt"


# direct methods
.method public static final a()Lk0/d;
    .registers 3

    .line 1
    new-instance v0, Lk0/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2, v1}, Lk0/a;-><init>(Ljava/util/Map;ZILt9/g;)V

    return-object v0
.end method

.method public static final varargs b([Lk0/d$b;)Lk0/a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lk0/d$b<",
            "*>;)",
            "Lk0/a;"
        }
    .end annotation

    const-string v0, "pairs"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lk0/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v1}, Lk0/a;-><init>(Ljava/util/Map;ZILt9/g;)V

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lk0/d$b;

    invoke-virtual {v0, p0}, Lk0/a;->g([Lk0/d$b;)V

    return-object v0
.end method
