###### Class v7.a (v7.a)
.class public final Lv7/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lv7/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lv7/c;

    invoke-direct {v0}, Lv7/c;-><init>()V

    sput-object v0, Lv7/a;->a:Lv7/c;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Lv7/a;->a:Lv7/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lv7/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static b()Z
    .registers 1

    sget-object v0, Lv7/a;->a:Lv7/c;

    invoke-virtual {v0}, Lv7/c;->d()Z

    move-result v0

    return v0
.end method
