###### Class androidx.appcompat.app.q (androidx.appcompat.app.q)
.class final Landroidx/appcompat/app/q;
.super Ljava/lang/Object;
.source "LocaleOverlayHelper.java"


# direct methods
.method private static a(Landroidx/core/os/h;Landroidx/core/os/h;)Landroidx/core/os/h;
    .registers 6

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_6
    invoke-virtual {p0}, Landroidx/core/os/h;->g()I

    move-result v2

    invoke-virtual {p1}, Landroidx/core/os/h;->g()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2e

    .line 3
    invoke-virtual {p0}, Landroidx/core/os/h;->g()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 4
    invoke-virtual {p0, v1}, Landroidx/core/os/h;->d(I)Ljava/util/Locale;

    move-result-object v2

    goto :goto_26

    .line 5
    :cond_1c
    invoke-virtual {p0}, Landroidx/core/os/h;->g()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p1, v2}, Landroidx/core/os/h;->d(I)Ljava/util/Locale;

    move-result-object v2

    :goto_26
    if-eqz v2, :cond_2b

    .line 6
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 7
    :cond_2e
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Ljava/util/Locale;

    .line 8
    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Locale;

    invoke-static {p0}, Landroidx/core/os/h;->a([Ljava/util/Locale;)Landroidx/core/os/h;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroidx/core/os/h;Landroidx/core/os/h;)Landroidx/core/os/h;
    .registers 3

    if-eqz p0, :cond_e

    .line 1
    invoke-virtual {p0}, Landroidx/core/os/h;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    .line 2
    :cond_9
    invoke-static {p0, p1}, Landroidx/appcompat/app/q;->a(Landroidx/core/os/h;Landroidx/core/os/h;)Landroidx/core/os/h;

    move-result-object p0

    return-object p0

    .line 3
    :cond_e
    :goto_e
    invoke-static {}, Landroidx/core/os/h;->e()Landroidx/core/os/h;

    move-result-object p0

    return-object p0
.end method
