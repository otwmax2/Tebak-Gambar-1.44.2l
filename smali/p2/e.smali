###### Class p2.e (p2.e)
.class public Lp2/e;
.super Ljava/lang/Object;
.source "UnitTranscoder.java"

# interfaces
.implements Lp2/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp2/c<",
        "TZ;TZ;>;"
    }
.end annotation


# static fields
.field private static final a:Lp2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/e<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lp2/e;

    invoke-direct {v0}, Lp2/e;-><init>()V

    sput-object v0, Lp2/e;->a:Lp2/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lp2/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lp2/c<",
            "TZ;TZ;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lp2/e;->a:Lp2/e;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public b(Lb2/l;)Lb2/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/l<",
            "TZ;>;)",
            "Lb2/l<",
            "TZ;>;"
        }
    .end annotation

    return-object p1
.end method
