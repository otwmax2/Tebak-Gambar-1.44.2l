###### Class g1.x (g1.x)
.class Lg1/x;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# static fields
.field private static a:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method static a(Landroid/view/ViewGroup;)Lg1/w;
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_c

    .line 2
    new-instance v0, Lg1/v;

    invoke-direct {v0, p0}, Lg1/v;-><init>(Landroid/view/ViewGroup;)V

    return-object v0

    .line 3
    :cond_c
    invoke-static {p0}, Lg1/u;->g(Landroid/view/ViewGroup;)Lg1/u;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/view/ViewGroup;Z)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lg1/x;->a:Z

    if-eqz v0, :cond_b

    .line 2
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_b

    :catch_8
    const/4 p0, 0x0

    .line 3
    sput-boolean p0, Lg1/x;->a:Z

    :cond_b
    :goto_b
    return-void
.end method

.method static c(Landroid/view/ViewGroup;Z)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_a

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    goto :goto_15

    :cond_a
    const/16 v1, 0x12

    if-lt v0, v1, :cond_12

    .line 3
    invoke-static {p0, p1}, Lg1/x;->b(Landroid/view/ViewGroup;Z)V

    goto :goto_15

    .line 4
    :cond_12
    invoke-static {p0, p1}, Lg1/y;->b(Landroid/view/ViewGroup;Z)V

    :goto_15
    return-void
.end method
