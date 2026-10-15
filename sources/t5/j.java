package t5;

import android.util.Base64;
import android.util.JsonReader;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import s5.f0;

/* JADX INFO: compiled from: CrashlyticsReportJsonTransform.java */
/* JADX INFO: loaded from: classes2.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final d6.a f35398a = new f6.d().j(s5.a.f34564a).k(true).i();

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: CrashlyticsReportJsonTransform.java */
    interface a<T> {
        T a(JsonReader jsonReader) throws IOException;
    }

    private static f0.e.d.f A(JsonReader jsonReader) throws IOException {
        f0.e.d.f.a aVarA = f0.e.d.f.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals("assignments")) {
                aVarA.b(n(jsonReader, new a() { // from class: t5.b
                    @Override // t5.j.a
                    public final Object a(JsonReader jsonReader2) {
                        return j.z(jsonReader2);
                    }
                }));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    private static f0.e.d.a.b.AbstractC0238d B(JsonReader jsonReader) throws IOException {
        f0.e.d.a.b.AbstractC0238d.AbstractC0239a abstractC0239aA = f0.e.d.a.b.AbstractC0238d.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "address":
                    abstractC0239aA.b(jsonReader.nextLong());
                    break;
                case "code":
                    abstractC0239aA.c(jsonReader.nextString());
                    break;
                case "name":
                    abstractC0239aA.d(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0239aA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static f0.e.d.a.b.AbstractC0240e C(JsonReader jsonReader) throws IOException {
        f0.e.d.a.b.AbstractC0240e.AbstractC0241a abstractC0241aA = f0.e.d.a.b.AbstractC0240e.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "frames":
                    abstractC0241aA.b(n(jsonReader, d.f35392a));
                    break;
                case "name":
                    abstractC0241aA.d(jsonReader.nextString());
                    break;
                case "importance":
                    abstractC0241aA.c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0241aA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static f0.d.b D(JsonReader jsonReader) throws IOException {
        f0.d.b.a aVarA = f0.d.b.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals("filename")) {
                aVarA.c(jsonReader.nextString());
            } else if (strNextName.equals("contents")) {
                aVarA.b(Base64.decode(jsonReader.nextString(), 2));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    private static f0.d E(JsonReader jsonReader) throws IOException {
        f0.d.a aVarA = f0.d.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals("files")) {
                aVarA.b(n(jsonReader, new a() { // from class: t5.g
                    @Override // t5.j.a
                    public final Object a(JsonReader jsonReader2) {
                        return j.D(jsonReader2);
                    }
                }));
            } else if (strNextName.equals("orgId")) {
                aVarA.c(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    private static f0.e.AbstractC0247e F(JsonReader jsonReader) throws IOException {
        f0.e.AbstractC0247e.a aVarA = f0.e.AbstractC0247e.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "buildVersion":
                    aVarA.b(jsonReader.nextString());
                    break;
                case "jailbroken":
                    aVarA.c(jsonReader.nextBoolean());
                    break;
                case "version":
                    aVarA.e(jsonReader.nextString());
                    break;
                case "platform":
                    aVarA.d(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static f0.e.d.a.c G(JsonReader jsonReader) throws IOException {
        f0.e.d.a.c.AbstractC0244a abstractC0244aA = f0.e.d.a.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "pid":
                    abstractC0244aA.d(jsonReader.nextInt());
                    break;
                case "processName":
                    abstractC0244aA.e(jsonReader.nextString());
                    break;
                case "defaultProcess":
                    abstractC0244aA.b(jsonReader.nextBoolean());
                    break;
                case "importance":
                    abstractC0244aA.c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0244aA.a();
    }

    private static f0 H(JsonReader jsonReader) throws IOException {
        f0.b bVarB = f0.b();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "ndkPayload":
                    bVarB.i(E(jsonReader));
                    break;
                case "sdkVersion":
                    bVarB.k(jsonReader.nextString());
                    break;
                case "appQualitySessionId":
                    bVarB.c(jsonReader.nextString());
                    break;
                case "appExitInfo":
                    bVarB.b(m(jsonReader));
                    break;
                case "buildVersion":
                    bVarB.d(jsonReader.nextString());
                    break;
                case "gmpAppId":
                    bVarB.g(jsonReader.nextString());
                    break;
                case "installationUuid":
                    bVarB.h(jsonReader.nextString());
                    break;
                case "firebaseInstallationId":
                    bVarB.f(jsonReader.nextString());
                    break;
                case "platform":
                    bVarB.j(jsonReader.nextInt());
                    break;
                case "displayVersion":
                    bVarB.e(jsonReader.nextString());
                    break;
                case "session":
                    bVarB.l(J(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return bVarB.a();
    }

    private static f0.e.d.AbstractC0246e.b I(JsonReader jsonReader) throws IOException {
        f0.e.d.AbstractC0246e.b.a aVarA = f0.e.d.AbstractC0246e.b.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals("variantId")) {
                aVarA.c(jsonReader.nextString());
            } else if (strNextName.equals("rolloutId")) {
                aVarA.b(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    private static f0.e J(JsonReader jsonReader) throws IOException {
        f0.e.b bVarA = f0.e.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "startedAt":
                    bVarA.m(jsonReader.nextLong());
                    break;
                case "appQualitySessionId":
                    bVarA.c(jsonReader.nextString());
                    break;
                case "identifier":
                    bVarA.k(Base64.decode(jsonReader.nextString(), 2));
                    break;
                case "endedAt":
                    bVarA.f(Long.valueOf(jsonReader.nextLong()));
                    break;
                case "device":
                    bVarA.e(q(jsonReader));
                    break;
                case "events":
                    bVarA.g(n(jsonReader, new a() { // from class: t5.a
                        @Override // t5.j.a
                        public final Object a(JsonReader jsonReader2) {
                            return j.r(jsonReader2);
                        }
                    }));
                    break;
                case "os":
                    bVarA.l(F(jsonReader));
                    break;
                case "app":
                    bVarA.b(l(jsonReader));
                    break;
                case "user":
                    bVarA.n(K(jsonReader));
                    break;
                case "generator":
                    bVarA.h(jsonReader.nextString());
                    break;
                case "crashed":
                    bVarA.d(jsonReader.nextBoolean());
                    break;
                case "generatorType":
                    bVarA.i(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return bVarA.a();
    }

    private static f0.e.f K(JsonReader jsonReader) throws IOException {
        f0.e.f.a aVarA = f0.e.f.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            if (jsonReader.nextName().equals("identifier")) {
                aVarA.b(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    private static f0.e.a l(JsonReader jsonReader) throws IOException {
        f0.e.a.AbstractC0232a abstractC0232aA = f0.e.a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "identifier":
                    abstractC0232aA.e(jsonReader.nextString());
                    break;
                case "developmentPlatform":
                    abstractC0232aA.b(jsonReader.nextString());
                    break;
                case "developmentPlatformVersion":
                    abstractC0232aA.c(jsonReader.nextString());
                    break;
                case "version":
                    abstractC0232aA.g(jsonReader.nextString());
                    break;
                case "installationUuid":
                    abstractC0232aA.f(jsonReader.nextString());
                    break;
                case "displayVersion":
                    abstractC0232aA.d(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0232aA.a();
    }

    private static f0.a m(JsonReader jsonReader) throws IOException {
        f0.a.b bVarA = f0.a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "buildIdMappingForArch":
                    bVarA.b(n(jsonReader, new a() { // from class: t5.c
                        @Override // t5.j.a
                        public final Object a(JsonReader jsonReader2) {
                            return j.o(jsonReader2);
                        }
                    }));
                    break;
                case "pid":
                    bVarA.d(jsonReader.nextInt());
                    break;
                case "pss":
                    bVarA.f(jsonReader.nextLong());
                    break;
                case "rss":
                    bVarA.h(jsonReader.nextLong());
                    break;
                case "timestamp":
                    bVarA.i(jsonReader.nextLong());
                    break;
                case "processName":
                    bVarA.e(jsonReader.nextString());
                    break;
                case "reasonCode":
                    bVarA.g(jsonReader.nextInt());
                    break;
                case "traceFile":
                    bVarA.j(jsonReader.nextString());
                    break;
                case "importance":
                    bVarA.c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return bVarA.a();
    }

    private static <T> List<T> n(JsonReader jsonReader, a<T> aVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(aVar.a(jsonReader));
        }
        jsonReader.endArray();
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static f0.a.AbstractC0230a o(JsonReader jsonReader) throws IOException {
        f0.a.AbstractC0230a.AbstractC0231a abstractC0231aA = f0.a.AbstractC0230a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "libraryName":
                    abstractC0231aA.d(jsonReader.nextString());
                    break;
                case "arch":
                    abstractC0231aA.b(jsonReader.nextString());
                    break;
                case "buildId":
                    abstractC0231aA.c(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0231aA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static f0.c p(JsonReader jsonReader) throws IOException {
        f0.c.a aVarA = f0.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals(SDKConstants.PARAM_KEY)) {
                aVarA.b(jsonReader.nextString());
            } else if (strNextName.equals(SDKConstants.PARAM_VALUE)) {
                aVarA.c(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    private static f0.e.c q(JsonReader jsonReader) throws IOException {
        f0.e.c.a aVarA = f0.e.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "simulator":
                    aVarA.i(jsonReader.nextBoolean());
                    break;
                case "manufacturer":
                    aVarA.e(jsonReader.nextString());
                    break;
                case "ram":
                    aVarA.h(jsonReader.nextLong());
                    break;
                case "arch":
                    aVarA.b(jsonReader.nextInt());
                    break;
                case "diskSpace":
                    aVarA.d(jsonReader.nextLong());
                    break;
                case "cores":
                    aVarA.c(jsonReader.nextInt());
                    break;
                case "model":
                    aVarA.f(jsonReader.nextString());
                    break;
                case "state":
                    aVarA.j(jsonReader.nextInt());
                    break;
                case "modelClass":
                    aVarA.g(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static f0.e.d r(JsonReader jsonReader) throws IOException {
        f0.e.d.b bVarA = f0.e.d.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "device":
                    bVarA.c(u(jsonReader));
                    break;
                case "rollouts":
                    bVarA.e(A(jsonReader));
                    break;
                case "app":
                    bVarA.b(s(jsonReader));
                    break;
                case "log":
                    bVarA.d(y(jsonReader));
                    break;
                case "type":
                    bVarA.g(jsonReader.nextString());
                    break;
                case "timestamp":
                    bVarA.f(jsonReader.nextLong());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return bVarA.a();
    }

    private static f0.e.d.a s(JsonReader jsonReader) throws IOException {
        f0.e.d.a.AbstractC0233a abstractC0233aA = f0.e.d.a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "appProcessDetails":
                    abstractC0233aA.b(n(jsonReader, new a() { // from class: t5.e
                        @Override // t5.j.a
                        public final Object a(JsonReader jsonReader2) {
                            return j.G(jsonReader2);
                        }
                    }));
                    break;
                case "background":
                    abstractC0233aA.c(Boolean.valueOf(jsonReader.nextBoolean()));
                    break;
                case "execution":
                    abstractC0233aA.f(v(jsonReader));
                    break;
                case "internalKeys":
                    abstractC0233aA.g(n(jsonReader, new a() { // from class: t5.i
                        @Override // t5.j.a
                        public final Object a(JsonReader jsonReader2) {
                            return j.p(jsonReader2);
                        }
                    }));
                    break;
                case "customAttributes":
                    abstractC0233aA.e(n(jsonReader, new a() { // from class: t5.i
                        @Override // t5.j.a
                        public final Object a(JsonReader jsonReader2) {
                            return j.p(jsonReader2);
                        }
                    }));
                    break;
                case "uiOrientation":
                    abstractC0233aA.h(jsonReader.nextInt());
                    break;
                case "currentProcessDetails":
                    abstractC0233aA.d(G(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0233aA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static f0.e.d.a.b.AbstractC0234a t(JsonReader jsonReader) throws IOException {
        f0.e.d.a.b.AbstractC0234a.AbstractC0235a abstractC0235aA = f0.e.d.a.b.AbstractC0234a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "name":
                    abstractC0235aA.c(jsonReader.nextString());
                    break;
                case "size":
                    abstractC0235aA.d(jsonReader.nextLong());
                    break;
                case "uuid":
                    abstractC0235aA.f(Base64.decode(jsonReader.nextString(), 2));
                    break;
                case "baseAddress":
                    abstractC0235aA.b(jsonReader.nextLong());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0235aA.a();
    }

    private static f0.e.d.c u(JsonReader jsonReader) throws IOException {
        f0.e.d.c.a aVarA = f0.e.d.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "batteryLevel":
                    aVarA.b(Double.valueOf(jsonReader.nextDouble()));
                    break;
                case "batteryVelocity":
                    aVarA.c(jsonReader.nextInt());
                    break;
                case "orientation":
                    aVarA.e(jsonReader.nextInt());
                    break;
                case "diskUsed":
                    aVarA.d(jsonReader.nextLong());
                    break;
                case "ramUsed":
                    aVarA.g(jsonReader.nextLong());
                    break;
                case "proximityOn":
                    aVarA.f(jsonReader.nextBoolean());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    private static f0.e.d.a.b v(JsonReader jsonReader) throws IOException {
        f0.e.d.a.b.AbstractC0236b abstractC0236bA = f0.e.d.a.b.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "appExitInfo":
                    abstractC0236bA.b(m(jsonReader));
                    break;
                case "threads":
                    abstractC0236bA.f(n(jsonReader, new a() { // from class: t5.f
                        @Override // t5.j.a
                        public final Object a(JsonReader jsonReader2) {
                            return j.C(jsonReader2);
                        }
                    }));
                    break;
                case "signal":
                    abstractC0236bA.e(B(jsonReader));
                    break;
                case "binaries":
                    abstractC0236bA.c(n(jsonReader, new a() { // from class: t5.h
                        @Override // t5.j.a
                        public final Object a(JsonReader jsonReader2) {
                            return j.t(jsonReader2);
                        }
                    }));
                    break;
                case "exception":
                    abstractC0236bA.d(w(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0236bA.a();
    }

    private static f0.e.d.a.b.c w(JsonReader jsonReader) throws IOException {
        f0.e.d.a.b.c.AbstractC0237a abstractC0237aA = f0.e.d.a.b.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "frames":
                    abstractC0237aA.c(n(jsonReader, d.f35392a));
                    break;
                case "reason":
                    abstractC0237aA.e(jsonReader.nextString());
                    break;
                case "type":
                    abstractC0237aA.f(jsonReader.nextString());
                    break;
                case "causedBy":
                    abstractC0237aA.b(w(jsonReader));
                    break;
                case "overflowCount":
                    abstractC0237aA.d(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0237aA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static f0.e.d.a.b.AbstractC0240e.AbstractC0242b x(JsonReader jsonReader) throws IOException {
        f0.e.d.a.b.AbstractC0240e.AbstractC0242b.AbstractC0243a abstractC0243aA = f0.e.d.a.b.AbstractC0240e.AbstractC0242b.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "offset":
                    abstractC0243aA.d(jsonReader.nextLong());
                    break;
                case "symbol":
                    abstractC0243aA.f(jsonReader.nextString());
                    break;
                case "pc":
                    abstractC0243aA.e(jsonReader.nextLong());
                    break;
                case "file":
                    abstractC0243aA.b(jsonReader.nextString());
                    break;
                case "importance":
                    abstractC0243aA.c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0243aA.a();
    }

    private static f0.e.d.AbstractC0245d y(JsonReader jsonReader) throws IOException {
        f0.e.d.AbstractC0245d.a aVarA = f0.e.d.AbstractC0245d.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            if (jsonReader.nextName().equals("content")) {
                aVarA.b(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static f0.e.d.AbstractC0246e z(JsonReader jsonReader) throws IOException {
        f0.e.d.AbstractC0246e.a aVarA = f0.e.d.AbstractC0246e.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "parameterKey":
                    aVarA.b(jsonReader.nextString());
                    break;
                case "templateVersion":
                    aVarA.e(jsonReader.nextLong());
                    break;
                case "rolloutVariant":
                    aVarA.d(I(jsonReader));
                    break;
                case "parameterValue":
                    aVarA.c(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    public f0 L(String str) throws IOException {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            try {
                f0 f0VarH = H(jsonReader);
                jsonReader.close();
                return f0VarH;
            } finally {
            }
        } catch (IllegalStateException e10) {
            throw new IOException(e10);
        }
    }

    public String M(f0 f0Var) {
        return f35398a.b(f0Var);
    }

    public f0.e.d j(String str) throws IOException {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            try {
                f0.e.d dVarR = r(jsonReader);
                jsonReader.close();
                return dVarR;
            } finally {
            }
        } catch (IllegalStateException e10) {
            throw new IOException(e10);
        }
    }

    public String k(f0.e.d dVar) {
        return f35398a.b(dVar);
    }
}
