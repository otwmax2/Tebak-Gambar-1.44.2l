package com.google.android.gms.internal.auth;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.vungle.mediation.BuildConfig;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfs {
    static String a(zzfq zzfqVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        d(zzfqVar, sb, 0);
        return sb.toString();
    }

    static final void b(StringBuilder sb, int i10, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                b(sb, i10, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                b(sb, i10, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            sb.append(' ');
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            sb.append(zzgn.a(zzeb.q((String) obj)));
            sb.append('\"');
            return;
        }
        if (obj instanceof zzeb) {
            sb.append(": \"");
            sb.append(zzgn.a((zzeb) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof zzeq) {
            sb.append(" {");
            d((zzeq) obj, sb, i10 + 2);
            sb.append("\n");
            while (i11 < i10) {
                sb.append(' ');
                i11++;
            }
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj.toString());
            return;
        }
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i13 = i10 + 2;
        b(sb, i13, SDKConstants.PARAM_KEY, entry.getKey());
        b(sb, i13, SDKConstants.PARAM_VALUE, entry.getValue());
        sb.append("\n");
        while (i11 < i10) {
            sb.append(' ');
            i11++;
        }
        sb.append("}");
    }

    private static final String c(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (Character.isUpperCase(cCharAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(cCharAt));
        }
        return sb.toString();
    }

    private static void d(zzfq zzfqVar, StringBuilder sb, int i10) {
        boolean zEquals;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : zzfqVar.getClass().getDeclaredMethods()) {
            map2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                map.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        for (String str : treeSet) {
            String strSubstring = str.startsWith("get") ? str.substring(3) : str;
            if (strSubstring.endsWith("List") && !strSubstring.endsWith("OrBuilderList") && !strSubstring.equals("List")) {
                String strValueOf = String.valueOf(strSubstring.substring(0, 1).toLowerCase());
                String strValueOf2 = String.valueOf(strSubstring.substring(1, strSubstring.length() - 4));
                String strConcat = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
                Method method2 = (Method) map.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    b(sb, i10, c(strConcat), zzeq.h(method2, zzfqVar, new Object[0]));
                }
            }
            if (strSubstring.endsWith("Map") && !strSubstring.equals("Map")) {
                String strValueOf3 = String.valueOf(strSubstring.substring(0, 1).toLowerCase());
                String strValueOf4 = String.valueOf(strSubstring.substring(1, strSubstring.length() - 3));
                String strConcat2 = strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3);
                Method method3 = (Method) map.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    b(sb, i10, c(strConcat2), zzeq.h(method3, zzfqVar, new Object[0]));
                }
            }
            if (((Method) map2.get(strSubstring.length() != 0 ? "set".concat(strSubstring) : new String("set"))) != null) {
                if (strSubstring.endsWith("Bytes")) {
                    String strValueOf5 = String.valueOf(strSubstring.substring(0, strSubstring.length() - 5));
                    if (!map.containsKey(strValueOf5.length() != 0 ? "get".concat(strValueOf5) : new String("get"))) {
                    }
                }
                String strValueOf6 = String.valueOf(strSubstring.substring(0, 1).toLowerCase());
                String strValueOf7 = String.valueOf(strSubstring.substring(1));
                String strConcat3 = strValueOf7.length() != 0 ? strValueOf6.concat(strValueOf7) : new String(strValueOf6);
                Method method4 = (Method) map.get(strSubstring.length() != 0 ? "get".concat(strSubstring) : new String("get"));
                Method method5 = (Method) map.get(strSubstring.length() != 0 ? "has".concat(strSubstring) : new String("has"));
                if (method4 != null) {
                    Object objH = zzeq.h(method4, zzfqVar, new Object[0]);
                    if (method5 == null) {
                        if (objH instanceof Boolean) {
                            if (((Boolean) objH).booleanValue()) {
                                b(sb, i10, c(strConcat3), objH);
                            }
                        } else if (objH instanceof Integer) {
                            if (((Integer) objH).intValue() != 0) {
                                b(sb, i10, c(strConcat3), objH);
                            }
                        } else if (objH instanceof Float) {
                            if (((Float) objH).floatValue() != 0.0f) {
                                b(sb, i10, c(strConcat3), objH);
                            }
                        } else if (!(objH instanceof Double)) {
                            if (objH instanceof String) {
                                zEquals = objH.equals(BuildConfig.FLAVOR);
                            } else if (objH instanceof zzeb) {
                                zEquals = objH.equals(zzeb.f21462p);
                            } else if (objH instanceof zzfq) {
                                if (objH != ((zzfq) objH).f()) {
                                    b(sb, i10, c(strConcat3), objH);
                                }
                            } else if (!(objH instanceof Enum) || ((Enum) objH).ordinal() != 0) {
                                b(sb, i10, c(strConcat3), objH);
                            }
                            if (!zEquals) {
                                b(sb, i10, c(strConcat3), objH);
                            }
                        } else if (((Double) objH).doubleValue() != 0.0d) {
                            b(sb, i10, c(strConcat3), objH);
                        }
                    } else if (((Boolean) zzeq.h(method5, zzfqVar, new Object[0])).booleanValue()) {
                        b(sb, i10, c(strConcat3), objH);
                    }
                }
            }
        }
        if (zzfqVar instanceof zzep) {
            throw null;
        }
        zzgq zzgqVar = ((zzeq) zzfqVar).zzc;
        if (zzgqVar != null) {
            zzgqVar.e(sb, i10);
        }
    }
}
