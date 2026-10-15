###### Class ga.g (ga.g)
.class final Lga/g;
.super Ljava/lang/Object;
.source "SafeCollector.kt"

# interfaces
.implements Lk9/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk9/d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final o:Lga/g;

.field private static final p:Lk9/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lga/g;

    invoke-direct {v0}, Lga/g;-><init>()V

    sput-object v0, Lga/g;->o:Lga/g;

    .line 1
    sget-object v0, Lk9/h;->o:Lk9/h;

    sput-object v0, Lga/g;->p:Lk9/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public getContext()Lk9/g;
    .registers 2

    .line 1
    sget-object v0, Lga/g;->p:Lk9/g;

    return-object v0
.end method
