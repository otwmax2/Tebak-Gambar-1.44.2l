###### Class u2.e (u2.e)
.class public Lu2/e;
.super Ljava/lang/Object;
.source "NoAnimation.java"

# interfaces
.implements Lu2/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu2/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lu2/c<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final a:Lu2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu2/e<",
            "*>;"
        }
    .end annotation
.end field

.field private static final b:Lu2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu2/d<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lu2/e;

    invoke-direct {v0}, Lu2/e;-><init>()V

    sput-object v0, Lu2/e;->a:Lu2/e;

    .line 2
    new-instance v0, Lu2/e$a;

    invoke-direct {v0}, Lu2/e$a;-><init>()V

    sput-object v0, Lu2/e;->b:Lu2/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic b()Lu2/e;
    .registers 1

    .line 1
    sget-object v0, Lu2/e;->a:Lu2/e;

    return-object v0
.end method

.method public static c()Lu2/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lu2/c<",
            "TR;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lu2/e;->a:Lu2/e;

    return-object v0
.end method

.method public static d()Lu2/d;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lu2/d<",
            "TR;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lu2/e;->b:Lu2/d;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lu2/c$a;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

###### Class u2.e.a (u2.e$a)
.class public Lu2/e$a;
.super Ljava/lang/Object;
.source "NoAnimation.java"

# interfaces
.implements Lu2/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lu2/d<",
        "TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZ)Lu2/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lu2/c<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lu2/e;->b()Lu2/e;

    move-result-object p1

    return-object p1
.end method
