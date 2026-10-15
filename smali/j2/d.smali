###### Class j2.d (j2.d)
.class public Lj2/d;
.super Ljava/lang/Object;
.source "UnitTransformation.java"

# interfaces
.implements Lz1/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz1/g<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lz1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lj2/d;

    invoke-direct {v0}, Lj2/d;-><init>()V

    sput-object v0, Lj2/d;->a:Lz1/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lj2/d;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj2/d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lj2/d;->a:Lz1/g;

    check-cast v0, Lj2/d;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public b(Lb2/l;II)Lb2/l;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/l<",
            "TT;>;II)",
            "Lb2/l<",
            "TT;>;"
        }
    .end annotation

    return-object p1
.end method
