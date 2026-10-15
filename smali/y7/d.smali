###### Class y7.d (y7.d)
.class public Ly7/d;
.super Ljava/lang/Object;


# static fields
.field private static b:Ly7/d;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly7/d;

    invoke-direct {v0}, Ly7/d;-><init>()V

    sput-object v0, Ly7/d;->b:Ly7/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ly7/d;
    .registers 1

    sget-object v0, Ly7/d;->b:Ly7/d;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .registers 2

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iput-object p1, p0, Ly7/d;->a:Landroid/content/Context;

    return-void
.end method

.method public c()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Ly7/d;->a:Landroid/content/Context;

    return-object v0
.end method
