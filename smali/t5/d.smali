###### Class t5.d (t5.d)
.class public final synthetic Lt5/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt5/j$a;


# static fields
.field public static final synthetic a:Lt5/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lt5/d;

    invoke-direct {v0}, Lt5/d;-><init>()V

    sput-object v0, Lt5/d;->a:Lt5/d;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/JsonReader;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lt5/j;->d(Landroid/util/JsonReader;)Ls5/f0$e$d$a$b$e$b;

    move-result-object p1

    return-object p1
.end method
